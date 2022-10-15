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
    private(set) var user: Paths.Users.WithUsername.GetResponse?

    private let fetchUser: FetchUserInteractor

    init(
        context: Context,
        fetchUser: FetchUserInteractor
    ) {
        self.context = context
        self.isLoading = false
        self.fetchUser = fetchUser
    }

    func onTask() {
        isLoading = true

        Task.detached {
            let user = try await self.fetchUser.execute(with: self.context.user.login)

            await MainActor.run(body: {
                self.user = user
                self.isLoading = false
            })
        }
    }

}
