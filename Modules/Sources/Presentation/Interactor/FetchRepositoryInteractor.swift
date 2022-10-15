//
//  FetchRepositoryInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import GitHubAPI

final class FetchRepositoryInteractor {

    private let api: APIClient

    init(_ api: APIClient) {
        self.api = api
    }

    func execute(with username: String) async throws -> [MinimalRepository] {
        let request = Paths.users.username(username).repos.get()
        let response = try await api.send(request)
        return response.value.filter { !$0.isFork }
    }

}
