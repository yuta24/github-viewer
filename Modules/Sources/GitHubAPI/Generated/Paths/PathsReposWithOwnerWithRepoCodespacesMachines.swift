// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Codespaces {
    public var machines: Machines {
        Machines(path: path + "/machines")
    }

    public struct Machines {
        /// Path: `/repos/{owner}/{repo}/codespaces/machines`
        public let path: String

        /// List available machine types for a repository
        ///
        /// List the machine types available for a given repository based on its configuration.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        /// 
        /// GitHub Apps must have write access to the `codespaces_metadata` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#list-available-machine-types-for-a-repository)
        public func get(location: String? = nil, clientIp: String? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(location, clientIp), id: "codespaces/repo-machines-for-authenticated-user")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var machines: [GitHubAPI.CodespaceMachine]

            public init(totalCount: Int, machines: [GitHubAPI.CodespaceMachine]) {
                self.totalCount = totalCount
                self.machines = machines
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.machines = try values.decode([GitHubAPI.CodespaceMachine].self, forKey: "machines")
            }
        }

        private func makeGetQuery(_ location: String?, _ clientIp: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(location, forKey: "location")
            encoder.encode(clientIp, forKey: "client_ip")
            return encoder.items
        }
    }
}