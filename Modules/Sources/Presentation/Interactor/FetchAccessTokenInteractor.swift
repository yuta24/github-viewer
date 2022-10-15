//
//  FetchAccessTokenInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation
import Resolver

protocol FetchAccessTokenInteractor {

    func execute() -> String?

}

final class FetchAccessTokenInteractorImpl: FetchAccessTokenInteractor {

    @Injected
    var store: AccessTokenStore

    func execute() -> String? {
        store.get()
    }

}
