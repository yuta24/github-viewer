//
//  FetchSimpleUsersInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import GitHubAPI

final class FetchSimpleUsersInteractor {

    private let api: APIClient

    init(_ api: APIClient) {
        self.api = api
    }

    func execute(with since: Int? = nil) async throws -> [SimpleUser] {
        let request = Paths.users.get(since: since)
        let response = try await api.send(request)
        return response.value
    }

}
