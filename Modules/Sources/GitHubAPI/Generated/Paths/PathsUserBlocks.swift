// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var blocks: Blocks {
        Blocks(path: path + "/blocks")
    }

    public struct Blocks {
        /// Path: `/user/blocks`
        public let path: String

        /// List users blocked by the authenticated user
        ///
        /// List the users you've blocked on your personal account.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-users-blocked-by-the-authenticated-user)
        public var get: Request<[GitHubAPI.SimpleUser]> {
            Request(method: "GET", url: path, id: "users/list-blocked-by-authenticated-user")
        }
    }
}
