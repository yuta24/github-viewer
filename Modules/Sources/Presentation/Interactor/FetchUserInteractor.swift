//
//  FetchUserInteractor.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import Foundation
import Get
import GitHubAPI

final class FetchUserInteractor {

    private let api: APIClient

    init(_ api: APIClient) {
        self.api = api
    }

    func execute(with username: String) async throws -> Paths.Users.WithUsername.GetResponse {
        let request = Paths.users.username(username).get
        let response = try await api.send(request)
        return response.value
    }

}
