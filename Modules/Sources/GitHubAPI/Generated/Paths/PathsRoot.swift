// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var root: Root {
        Root(path: "/")
    }

    public struct Root {
        /// Path: `/`
        public let path: String

        /// GitHub API Root
        ///
        /// Get Hypermedia links to resources accessible in GitHub's REST API
        ///
        /// [API method documentation](https://docs.github.com/rest/overview/resources-in-the-rest-api#root-endpoint)
        public var get: Request<GitHubAPI.Root> {
            Request(method: "GET", url: path, id: "meta/root")
        }
    }
}