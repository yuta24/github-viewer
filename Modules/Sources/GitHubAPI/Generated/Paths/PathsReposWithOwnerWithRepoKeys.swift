// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }

    public struct Keys {
        /// Path: `/repos/{owner}/{repo}/keys`
        public let path: String

        /// List deploy keys
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-deploy-keys)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.DeployKey]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "repos/list-deploy-keys")
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

        /// Create a deploy key
        ///
        /// You can create a read-only deploy key.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#create-a-deploy-key)
        public func post(_ body: PostRequest) -> Request<GitHubAPI.DeployKey> {
            Request(method: "POST", url: path, body: body, id: "repos/create-deploy-key")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// A name for the key.
            public var title: String?
            /// The contents of the key.
            public var key: String
            /// If `true`, the key will only be able to read repository contents. Otherwise, the key will be able to read and write.  
            ///   
            /// Deploy keys with write access can perform the same actions as an organization member with admin access, or a collaborator on a personal repository. For more information, see "[Repository permission levels for an organization](https://docs.github.com/articles/repository-permission-levels-for-an-organization/)" and "[Permission levels for a user account repository](https://docs.github.com/articles/permission-levels-for-a-user-account-repository/)."
            public var isReadOnly: Bool?

            public init(title: String? = nil, key: String, isReadOnly: Bool? = nil) {
                self.title = title
                self.key = key
                self.isReadOnly = isReadOnly
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(title, forKey: "title")
                try values.encode(key, forKey: "key")
                try values.encodeIfPresent(isReadOnly, forKey: "read_only")
            }
        }
    }
}
