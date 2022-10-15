//
//  ResetAccessTokenInteractor.swift
//  Presenntation
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation
import Resolver

protocol ResetAccessTokenInteractor {

    func execute()

}

final class ResetAccessTokenInteractorImpl: ResetAccessTokenInteractor {

    @Injected
    var store: AccessTokenStore

    func execute() {
        store.remove()
    }

}
