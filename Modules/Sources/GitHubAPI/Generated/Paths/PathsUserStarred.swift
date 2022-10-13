// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var starred: Starred {
        Starred(path: path + "/starred")
    }

    public struct Starred {
        /// Path: `/user/starred`
        public let path: String

        /// List repositories starred by the authenticated user
        ///
        /// Lists repositories the authenticated user has starred.
        /// 
        /// You can also find out _when_ stars were created by passing the following custom [media type](https://docs.github.com/rest/overview/media-types/) via the `Accept` header: `application/vnd.github.star+json`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-repositories-starred-by-the-authenticated-user)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.Repository]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "activity/list-repos-starred-by-authenticated-user")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var sort: Sort?
            public var direction: Direction?
            public var perPage: Int?
            public var page: Int?

            public enum Sort: String, Codable, CaseIterable {
                case created
                case updated
            }

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(sort: Sort? = nil, direction: Direction? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.sort = sort
                self.direction = direction
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(sort, forKey: "sort")
                encoder.encode(direction, forKey: "direction")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}
