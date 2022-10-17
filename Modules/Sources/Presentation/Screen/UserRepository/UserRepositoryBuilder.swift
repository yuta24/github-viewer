//
//  UserRepositoryBuilder.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/18.
//

import SwiftUI
import GitHubAPI

enum UserRepositoryBuilder {

    @MainActor
    static func build(with user: SimpleUser) -> UserRepositoryScreen {
        .init(store:
                .init(
                    context: .init(user: user),
                    fetchUser: FetchUserInteractorImpl(),
                    fetchRepository: FetchRepositoryInteractorImpl()))
    }

}
