//
//  UsersBuilder.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/18.
//

import SwiftUI

enum UsersBuilder {

    @MainActor
    static func build() -> UsersScreen {
        .init(store:
                .init(
                    fetchAccessToken: FetchAccessTokenInteractorImpl(),
                    fetchSimpleUser: FetchSimpleUsersInteractorImpl()))
    }

}
