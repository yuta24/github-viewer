// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var tags: Tags {
        Tags(path: path + "/tags")
    }

    public struct Tags {
        /// Path: `/repos/{owner}/{repo}/tags`
        public let path: String

        /// List repository tags
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-repository-tags)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.Tag]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "repos/list-tags")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
