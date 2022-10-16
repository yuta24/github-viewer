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
    private(set) var isLoading: Bool
    @Published
    private(set) var user: User?
    @Published
    private(set) var repositories: [MinimalRepository]

    private let fetchUser: FetchUserInteractor
    private let fetchRepository: FetchRepositoryInteractor

    init(
        context: Context,
        fetchUser: FetchUserInteractor,
        fetchRepository: FetchRepositoryInteractor
    ) {
        self.context = context
        self.isLoading = false
        self.repositories = []
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
                self.isLoading = false
            })
        }
    }

}
