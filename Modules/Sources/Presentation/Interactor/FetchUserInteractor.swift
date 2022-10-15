//
//  FetchUserInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import Resolver
import GitHubAPI

protocol FetchUserInteractor {

    func execute(with username: String) async throws -> Paths.Users.WithUsername.GetResponse

}

final class FetchUserInteractorImpl: FetchUserInteractor {

    @Injected
    var api: APIClient

    func execute(with username: String) async throws -> Paths.Users.WithUsername.GetResponse {
        let request = Paths.users.username(username).get
        let response = try await api.send(request)
        return response.value
    }

}
