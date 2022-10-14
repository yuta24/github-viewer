// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var codespaces: Codespaces {
        Codespaces(path: path + "/codespaces")
    }

    public struct Codespaces {
        /// Path: `/repos/{owner}/{repo}/codespaces`
        public let path: String

        /// List codespaces in a repository for the authenticated user
        ///
        /// Lists the codespaces associated to a specified repository and the authenticated user.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        /// 
        /// GitHub Apps must have read access to the `codespaces` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#list-codespaces-in-a-repository-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "codespaces/list-in-repository-for-authenticated-user")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var codespaces: [GitHubAPI.Codespace]

            public init(totalCount: Int, codespaces: [GitHubAPI.Codespace]) {
                self.totalCount = totalCount
                self.codespaces = codespaces
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.codespaces = try values.decode([GitHubAPI.Codespace].self, forKey: "codespaces")
            }
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }

        /// Create a codespace in a repository
        ///
        /// Creates a codespace owned by the authenticated user in the specified repository.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        /// 
        /// GitHub Apps must have write access to the `codespaces` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#create-a-codespace-in-a-repository)
        public func post(_ body: PostRequest) -> Request<GitHubAPI.Codespace> {
            Request(method: "POST", url: path, body: body, id: "codespaces/create-with-repo-for-authenticated-user")
        }

        public struct PostRequest: Encodable {
            /// Git ref (typically a branch name) for this codespace
            public var ref: String?
            /// Location for this codespace. Assigned by IP if not provided
            public var location: String?
            /// IP for location auto-detection when proxying a request
            public var clientIp: String?
            /// Machine type to use for this codespace
            public var machine: String?
            /// Path to devcontainer.json config to use for this codespace
            public var devcontainerPath: String?
            /// Whether to authorize requested permissions from devcontainer.json
            public var isMultiRepoPermissionsOptOut: Bool?
            /// Working directory for this codespace
            public var workingDirectory: String?
            /// Time in minutes before codespace stops from inactivity
            public var idleTimeoutMinutes: Int?
            /// Display name for this codespace
            public var displayName: String?
            /// Duration in minutes after codespace has gone idle in which it will be deleted. Must be integer minutes between 0 and 43200 (30 days).
            public var retentionPeriodMinutes: Int?

            public init(ref: String? = nil, location: String? = nil, clientIp: String? = nil, machine: String? = nil, devcontainerPath: String? = nil, isMultiRepoPermissionsOptOut: Bool? = nil, workingDirectory: String? = nil, idleTimeoutMinutes: Int? = nil, displayName: String? = nil, retentionPeriodMinutes: Int? = nil) {
                self.ref = ref
                self.location = location
                self.clientIp = clientIp
                self.machine = machine
                self.devcontainerPath = devcontainerPath
                self.isMultiRepoPermissionsOptOut = isMultiRepoPermissionsOptOut
                self.workingDirectory = workingDirectory
                self.idleTimeoutMinutes = idleTimeoutMinutes
                self.displayName = displayName
                self.retentionPeriodMinutes = retentionPeriodMinutes
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(ref, forKey: "ref")
                try values.encodeIfPresent(location, forKey: "location")
                try values.encodeIfPresent(clientIp, forKey: "client_ip")
                try values.encodeIfPresent(machine, forKey: "machine")
                try values.encodeIfPresent(devcontainerPath, forKey: "devcontainer_path")
                try values.encodeIfPresent(isMultiRepoPermissionsOptOut, forKey: "multi_repo_permissions_opt_out")
                try values.encodeIfPresent(workingDirectory, forKey: "working_directory")
                try values.encodeIfPresent(idleTimeoutMinutes, forKey: "idle_timeout_minutes")
                try values.encodeIfPresent(displayName, forKey: "display_name")
                try values.encodeIfPresent(retentionPeriodMinutes, forKey: "retention_period_minutes")
            }
        }
    }
}