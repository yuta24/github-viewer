//
//  SetAccessTokenScreenStore.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation

@MainActor
final class SetAccessTokenScreenStore: ObservableObject {

    @Published
    var token: String

    private let updateAccessToken: UpdateAccessTokenInteractor

    init(updateAccessToken: UpdateAccessTokenInteractor) {
        self.token = ""
        self.updateAccessToken = updateAccessToken
    }

    func onSet() {
        updateAccessToken.execute(with: token)
    }

}
