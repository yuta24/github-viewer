// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var stargazers: Stargazers {
        Stargazers(path: path + "/stargazers")
    }

    public struct Stargazers {
        /// Path: `/repos/{owner}/{repo}/stargazers`
        public let path: String

        /// List stargazers
        ///
        /// Lists the people that have starred the repository.
        /// 
        /// You can also find out _when_ stars were created by passing the following custom [media type](https://docs.github.com/rest/overview/media-types/) via the `Accept` header: `application/vnd.github.star+json`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-stargazers)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "activity/list-stargazers-for-repo")
        }

        public struct GetResponse: Decodable {
            public var simpleUsers: [GitHubAPI.SimpleUser]?
            public var stargazers: [GitHubAPI.Stargazer]?

            public init(simpleUsers: [GitHubAPI.SimpleUser]? = nil, stargazers: [GitHubAPI.Stargazer]? = nil) {
                self.simpleUsers = simpleUsers
                self.stargazers = stargazers
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.simpleUsers = try? container.decode([GitHubAPI.SimpleUser].self)
                self.stargazers = try? container.decode([GitHubAPI.Stargazer].self)
            }
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
