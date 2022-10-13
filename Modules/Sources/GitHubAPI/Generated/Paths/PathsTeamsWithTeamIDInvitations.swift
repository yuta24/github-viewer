// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams.WithTeamID {
    public var invitations: Invitations {
        Invitations(path: path + "/invitations")
    }

    public struct Invitations {
        /// Path: `/teams/{team_id}/invitations`
        public let path: String

        /// List pending team invitations (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List pending team invitations`](https://docs.github.com/rest/reference/teams#list-pending-team-invitations) endpoint.
        /// 
        /// The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#list-pending-team-invitations-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.OrganizationInvitation]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "teams/list-pending-invitations-legacy")
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
