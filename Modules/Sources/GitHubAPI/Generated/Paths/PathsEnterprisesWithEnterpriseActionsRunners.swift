// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Actions {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }

    public struct Runners {
        /// Path: `/enterprises/{enterprise}/actions/runners`
        public let path: String

        /// List self-hosted runners for an enterprise
        ///
        /// Lists all self-hosted runners configured for an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-self-hosted-runners-for-an-enterprise)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "enterprise-admin/list-self-hosted-runners-for-enterprise")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Double?
            public var runners: [GitHubAPI.Runner]?

            public init(totalCount: Double? = nil, runners: [GitHubAPI.Runner]? = nil) {
                self.totalCount = totalCount
                self.runners = runners
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decodeIfPresent(Double.self, forKey: "total_count")
                self.runners = try values.decodeIfPresent([GitHubAPI.Runner].self, forKey: "runners")
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
