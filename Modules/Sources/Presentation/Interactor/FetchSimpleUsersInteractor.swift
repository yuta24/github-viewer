//
//  FetchSimpleUsersInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import Resolver
import GitHubAPI

protocol FetchSimpleUsersInteractor {

    func execute() async throws -> [SimpleUser]
    func execute(with since: Int?) async throws -> [SimpleUser]

}

extension FetchSimpleUsersInteractor {

    func execute() async throws -> [SimpleUser] {
        try await execute(with: nil)
    }

}

final class FetchSimpleUsersInteractorImpl: FetchSimpleUsersInteractor {

    @Injected
    var api: APIClient

    func execute(with since: Int? = nil) async throws -> [SimpleUser] {
        let request = Paths.users.get(since: since)
        let response = try await api.send(request)
        return response.value
    }

}
