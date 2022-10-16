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

    func execute(with username: String) async throws -> User

}

final class FetchUserInteractorImpl: FetchUserInteractor {

    @Injected
    var api: APIClient

    func execute(with username: String) async throws -> User {
        let request = Paths.users.username(username).get
        let response = try await api.send(request)
        return .init(response.value)
    }

}

extension User {

    init(_ response: Paths.Users.WithUsername.GetResponse) {
        switch response {
        case .privateUser(let user):
            self.id = user.id
            self.avatarURL = user.avatarURL
            self.htmlURL = user.htmlURL
            self.login = user.login
            self.name = user.name
            self.bio = user.bio
            self.followers = user.followers
            self.following = user.following
        case .publicUser(let user):
            self.id = user.id
            self.avatarURL = user.avatarURL
            self.htmlURL = user.htmlURL
            self.login = user.login
            self.name = user.name
            self.bio = user.bio
            self.followers = user.followers
            self.following = user.following
        }
    }

}
