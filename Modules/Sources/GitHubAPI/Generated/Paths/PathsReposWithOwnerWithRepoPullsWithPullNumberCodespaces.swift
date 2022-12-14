// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var codespaces: Codespaces {
        Codespaces(path: path + "/codespaces")
    }

    public struct Codespaces {
        /// Path: `/repos/{owner}/{repo}/pulls/{pull_number}/codespaces`
        public let path: String

        /// Create a codespace from a pull request
        ///
        /// Creates a codespace owned by the authenticated user for the specified pull request.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        /// 
        /// GitHub Apps must have write access to the `codespaces` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#create-a-codespace-from-a-pull-request)
        public func post(_ body: PostRequest) -> Request<GitHubAPI.Codespace> {
            Request(method: "POST", url: path, body: body, id: "codespaces/create-with-pr-for-authenticated-user")
        }

        public struct PostRequest: Encodable {
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

            public init(location: String? = nil, clientIp: String? = nil, machine: String? = nil, devcontainerPath: String? = nil, isMultiRepoPermissionsOptOut: Bool? = nil, workingDirectory: String? = nil, idleTimeoutMinutes: Int? = nil, displayName: String? = nil, retentionPeriodMinutes: Int? = nil) {
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
