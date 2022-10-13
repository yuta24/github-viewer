// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams.WithTeamID.Discussions.WithDiscussionNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }

    public struct Comments {
        /// Path: `/teams/{team_id}/discussions/{discussion_number}/comments`
        public let path: String

        /// List discussion comments (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List discussion comments](https://docs.github.com/rest/reference/teams#list-discussion-comments) endpoint.
        /// 
        /// List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#list-discussion-comments-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.TeamDiscussionComment]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "teams/list-discussion-comments-legacy")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var direction: Direction?
            public var perPage: Int?
            public var page: Int?

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(direction: Direction? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.direction = direction
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(direction, forKey: "direction")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }

        /// Create a discussion comment (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Create a discussion comment](https://docs.github.com/rest/reference/teams#create-a-discussion-comment) endpoint.
        /// 
        /// Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in secondary rate limiting. See "[Secondary rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#secondary-rate-limits)" and "[Dealing with secondary rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-secondary-rate-limits)" for details.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#create-a-discussion-comment-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func post(body: String) -> Request<GitHubAPI.TeamDiscussionComment> {
            Request(method: "POST", url: path, body: ["body": body], id: "teams/create-discussion-comment-legacy")
        }
    }
}
