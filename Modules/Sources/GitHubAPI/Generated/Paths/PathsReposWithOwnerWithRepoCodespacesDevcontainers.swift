// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Codespaces {
    public var devcontainers: Devcontainers {
        Devcontainers(path: path + "/devcontainers")
    }

    public struct Devcontainers {
        /// Path: `/repos/{owner}/{repo}/codespaces/devcontainers`
        public let path: String

        /// List devcontainer configurations in a repository for the authenticated user
        ///
        /// Lists the devcontainer.json files associated with a specified repository and the authenticated user. These files
        /// specify launchpoint configurations for codespaces created within the repository.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        /// 
        /// GitHub Apps must have read access to the `codespaces_metadata` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#list-devcontainers-in-a-repository-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "codespaces/list-devcontainers-in-repository-for-authenticated-user")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var devcontainers: [Devcontainer]

            public struct Devcontainer: Decodable {
                public var path: String
                public var name: String?

                public init(path: String, name: String? = nil) {
                    self.path = path
                    self.name = name
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.path = try values.decode(String.self, forKey: "path")
                    self.name = try values.decodeIfPresent(String.self, forKey: "name")
                }
            }

            public init(totalCount: Int, devcontainers: [Devcontainer]) {
                self.totalCount = totalCount
                self.devcontainers = devcontainers
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.devcontainers = try values.decode([Devcontainer].self, forKey: "devcontainers")
            }
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}