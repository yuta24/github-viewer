//
//  UserRepositoryScreenStore.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import Foundation
import GitHubAPI

@MainActor
final class UserRepositoryScreenStore: ObservableObject {

    struct Context {

        let user: SimpleUser

    }

    let context: Context

    @Published
    var isActivityPresented: Bool
    @Published
    var isSafariPresented: Bool

    @Published
    private(set) var isLoading: Bool
    @Published
    private(set) var user: User?
    @Published
    private(set) var repositories: [MinimalRepository]
    @Published
    private(set) var url: URL?
    private(set) var lastID: Int?

    private var page: Int
    private var next: Bool

    private let fetchUser: FetchUserInteractor
    private let fetchRepository: FetchRepositoryInteractor

    init(
        context: Context,
        fetchUser: FetchUserInteractor,
        fetchRepository: FetchRepositoryInteractor
    ) {
        self.context = context
        self.isActivityPresented = false
        self.isSafariPresented = false
        self.isLoading = false
        self.repositories = []
        self.page = 1
        self.next = true
        self.fetchUser = fetchUser
        self.fetchRepository = fetchRepository
    }

    func onTask() {
        isLoading = true

        Task.detached {
            let user = try await self.fetchUser.execute(with: self.context.user.login)
            let repositories = try await self.fetchRepository.execute(with: self.context.user.login)

            await MainActor.run(body: {
                self.user = user
                self.repositories = repositories
                self.lastID = repositories.last?.id
                self.next = !repositories.isEmpty
                self.isLoading = false
            })
        }
    }

    func onReach() {
        guard !isLoading, next else { return }

        isLoading = true

        Task.detached {
            let repositories = try await self.fetchRepository.execute(with: self.context.user.login, at: self.page)

            await MainActor.run(body: {
                self.repositories.append(contentsOf: repositories)
                self.lastID = repositories.last?.id
                self.page += 1
                self.next = !repositories.isEmpty
                self.isLoading = false
            })
        }
    }

    func onOpen(_ url: URL) {
        self.url = url
        isSafariPresented = true
    }

    func onShareTapped() {
        isActivityPresented = true
    }

}
