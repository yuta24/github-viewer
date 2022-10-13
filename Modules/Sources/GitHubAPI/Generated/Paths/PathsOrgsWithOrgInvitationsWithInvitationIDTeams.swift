// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Invitations.WithInvitationID {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }

    public struct Teams {
        /// Path: `/orgs/{org}/invitations/{invitation_id}/teams`
        public let path: String

        /// List organization invitation teams
        ///
        /// List all teams associated with an invitation. In order to see invitations in an organization, the authenticated user must be an organization owner.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#list-organization-invitation-teams)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.Team]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "orgs/list-invitation-teams")
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
