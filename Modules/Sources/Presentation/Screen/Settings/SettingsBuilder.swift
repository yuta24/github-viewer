//
//  SettingsBuilder.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/18.
//

import SwiftUI

enum SettingsBuilder {

    @MainActor
    static func build() -> SettingsScreen {
        .init(store:
                .init(
                    fetchAccessToken: FetchAccessTokenInteractorImpl(),
                    resetAccessToken: ResetAccessTokenInteractorImpl()))
    }

}
