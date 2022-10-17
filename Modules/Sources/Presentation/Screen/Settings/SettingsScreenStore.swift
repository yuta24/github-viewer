//
//  SettingsScreenStore.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/17.
//

import Foundation

@MainActor
final class SettingsScreenStore: ObservableObject {

    private let fetchAccessToken: FetchAccessTokenInteractor
    private let resetAccessToken: ResetAccessTokenInteractor

    init(
        fetchAccessToken: FetchAccessTokenInteractor,
        resetAccessToken: ResetAccessTokenInteractor
    ) {
        self.fetchAccessToken = fetchAccessToken
        self.resetAccessToken = resetAccessToken
    }

    func onResetTapped() {
        resetAccessToken.execute()
    }

}
