// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Members.WithUsername.Codespaces.WithCodespaceName {
    public var stop: Stop {
        Stop(path: path + "/stop")
    }

    public struct Stop {
        /// Path: `/orgs/{org}/members/{username}/codespaces/{codespace_name}/stop`
        public let path: String

        /// Stop a codespace for an organization user
        ///
        /// Stops a user's codespace.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces)
        public var post: Request<GitHubAPI.Codespace> {
            Request(method: "POST", url: path, id: "codespaces/stop-in-organization")
        }
    }
}
