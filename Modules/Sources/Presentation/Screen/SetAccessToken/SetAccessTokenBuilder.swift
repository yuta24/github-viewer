//
//  SetAccessTokenBuilder.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/18.
//

import SwiftUI

enum SetAccessTokenBuilder {

    @MainActor
    static func build() -> SetAccessTokenScreen {
        .init(store:
                .init(
                    updateAccessToken: UpdateAccessTokenInteractorImpl()))
    }

}
