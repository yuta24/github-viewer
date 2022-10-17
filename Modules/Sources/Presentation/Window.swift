//
//  Window.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import SwiftUI

public enum Window {

    @MainActor
    public static func build() -> some View {
        UsersScreen(
            store: .init(
                fetchAccessToken: FetchAccessTokenInteractorImpl(),
                fetchSimpleUser: FetchSimpleUsersInteractorImpl()))
    }

}
