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
    private(set) var isLoading: Bool
    @Published
    private(set) var users: [SimpleUser]

    private let fetchSimpleUser: FetchSimpleUsersInteractor

    init(fetchSimpleUser: FetchSimpleUsersInteractor) {
        self.users = []
        self.isLoading = false
        self.fetchSimpleUser = fetchSimpleUser
    }

    func onTask() {
        isLoading = true

        Task.detached {
            let users = try await self.fetchSimpleUser.execute()

            await MainActor.run(body: {
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

}
