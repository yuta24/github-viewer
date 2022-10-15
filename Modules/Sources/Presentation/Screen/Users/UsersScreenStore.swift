//
//  UsersScreenStore.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import GitHubAPI

@MainActor
final class UsersScreenStore: ObservableObject {

    @Published
    var isSetPresented: Bool

    @Published
    private(set) var isLoading: Bool
    @Published
    private(set) var hasAccessToken: Bool
    @Published
    private(set) var users: [SimpleUser]

    private let fetchAccessToken: FetchAccessTokenInteractor
    private let fetchSimpleUser: FetchSimpleUsersInteractor
    private let resetAccessToken: ResetAccessTokenInteractor

    init(
        fetchAccessToken: FetchAccessTokenInteractor,
        fetchSimpleUser: FetchSimpleUsersInteractor,
        resetAccessToken: ResetAccessTokenInteractor
    ) {
        self.isSetPresented = false
        self.isLoading = false
        self.users = []
        self.hasAccessToken = false
        self.fetchAccessToken = fetchAccessToken
        self.fetchSimpleUser = fetchSimpleUser
        self.resetAccessToken = resetAccessToken
    }

    func onTask() {
        isLoading = true

        Task.detached {
            let accessToken = self.fetchAccessToken.execute()
            let users = try await self.fetchSimpleUser.execute()

            await MainActor.run(body: {
                self.hasAccessToken = accessToken != nil
                self.users = users
                self.isLoading = false
            })
        }
    }

    func onReach(_ user: SimpleUser) {
        guard !isLoading else { return }

        isLoading = true

        Task.detached {
            let users = try await self.fetchSimpleUser.execute(with: user.id)

            await MainActor.run(body: {
                self.users.append(contentsOf: users)
                self.isLoading = false
            })
        }
    }

    func onSetTapped() {
        isSetPresented = true
    }

    func onResetTapped() {
        resetAccessToken.execute()
        hasAccessToken = false
    }

    func onSetDismiss() {
        let accessToken = fetchAccessToken.execute()
        hasAccessToken = accessToken != nil
    }

}
