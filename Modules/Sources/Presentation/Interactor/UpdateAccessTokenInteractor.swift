//
//  UpdateAccessTokenInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation
import Resolver

protocol UpdateAccessTokenInteractor {

    func execute(with token: String)

}

final class UpdateAccessTokenInteractorImpl: UpdateAccessTokenInteractor {

    @Injected
    var store: AccessTokenStore

    func execute(with token: String) {
        store.set(token)
    }

}
