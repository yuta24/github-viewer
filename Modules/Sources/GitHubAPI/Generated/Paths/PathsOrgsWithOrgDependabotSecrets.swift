// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Dependabot {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }

    public struct Secrets {
        /// Path: `/orgs/{org}/dependabot/secrets`
        public let path: String

        /// List organization secrets
        ///
        /// Lists all secrets available in an organization without revealing their encrypted values. You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `dependabot_secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/dependabot#list-organization-secrets)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "dependabot/list-org-secrets")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var secrets: [GitHubAPI.OrganizationDependabotSecret]

            public init(totalCount: Int, secrets: [GitHubAPI.OrganizationDependabotSecret]) {
                self.totalCount = totalCount
                self.secrets = secrets
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.secrets = try values.decode([GitHubAPI.OrganizationDependabotSecret].self, forKey: "secrets")
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
