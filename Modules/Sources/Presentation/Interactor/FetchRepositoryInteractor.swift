//
//  FetchRepositoryInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import Resolver
import GitHubAPI

protocol FetchRepositoryInteractor {

    func execute(with username: String) async throws -> [MinimalRepository]
    func execute(with username: String, at page: Int) async throws -> [MinimalRepository]

}

extension FetchRepositoryInteractor {

    func execute(with username: String) async throws -> [MinimalRepository] {
        try await execute(with: username, at: 1)
    }

}

final class FetchRepositoryInteractorImpl: FetchRepositoryInteractor {

    @Injected
    var api: APIClient

    func execute(with username: String, at page: Int) async throws -> [MinimalRepository] {
        let request = Paths.users.username(username).repos.get(parameters: .init(page: page))
        let response = try await api.send(request)
        return response.value.filter { !$0.isFork }
    }

}
