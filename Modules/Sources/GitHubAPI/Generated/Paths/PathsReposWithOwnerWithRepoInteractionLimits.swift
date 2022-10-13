// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var interactionLimits: InteractionLimits {
        InteractionLimits(path: path + "/interaction-limits")
    }

    public struct InteractionLimits {
        /// Path: `/repos/{owner}/{repo}/interaction-limits`
        public let path: String

        /// Get interaction restrictions for a repository
        ///
        /// Shows which type of GitHub user can interact with this repository and when the restriction expires. If there are no restrictions, you will see an empty response.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/interactions#get-interaction-restrictions-for-a-repository)
        public var get: Request<GetResponse> {
            Request(method: "GET", url: path, id: "interactions/get-restrictions-for-repo")
        }

        public struct GetResponse: Decodable {
            /// Interaction Limits
            ///
            /// Interaction limit settings.
            public var interactionLimitResponse: GitHubAPI.InteractionLimitResponse?

            public init(interactionLimitResponse: GitHubAPI.InteractionLimitResponse? = nil) {
                self.interactionLimitResponse = interactionLimitResponse
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.interactionLimitResponse = try? container.decode(GitHubAPI.InteractionLimitResponse.self)
            }
        }

        /// Set interaction restrictions for a repository
        ///
        /// Temporarily restricts interactions to a certain type of GitHub user within the given repository. You must have owner or admin access to set these restrictions. If an interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/interactions#set-interaction-restrictions-for-a-repository)
        public func put(_ body: GitHubAPI.InteractionLimit) -> Request<GitHubAPI.InteractionLimitResponse> {
            Request(method: "PUT", url: path, body: body, id: "interactions/set-restrictions-for-repo")
        }

        /// Remove interaction restrictions for a repository
        ///
        /// Removes all interaction restrictions from the given repository. You must have owner or admin access to remove restrictions. If the interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/interactions#remove-interaction-restrictions-for-a-repository)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "interactions/remove-restrictions-for-repo")
        }
    }
}
