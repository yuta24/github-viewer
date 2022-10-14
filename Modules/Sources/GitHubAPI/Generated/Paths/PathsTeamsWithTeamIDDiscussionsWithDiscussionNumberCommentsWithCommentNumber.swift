// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams.WithTeamID.Discussions.WithDiscussionNumber.Comments {
    public func commentNumber(_ commentNumber: Int) -> WithCommentNumber {
        WithCommentNumber(path: "\(path)/\(commentNumber)")
    }

    public struct WithCommentNumber {
        /// Path: `/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}`
        public let path: String

        /// Get a discussion comment (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion comment](https://docs.github.com/rest/reference/teams#get-a-discussion-comment) endpoint.
        /// 
        /// Get a specific comment on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#get-a-discussion-comment-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var get: Request<GitHubAPI.TeamDiscussionComment> {
            Request(method: "GET", url: path, id: "teams/get-discussion-comment-legacy")
        }

        /// Update a discussion comment (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion comment](https://docs.github.com/rest/reference/teams#update-a-discussion-comment) endpoint.
        /// 
        /// Edits the body text of a discussion comment. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#update-a-discussion-comment-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func patch(body: String) -> Request<GitHubAPI.TeamDiscussionComment> {
            Request(method: "PATCH", url: path, body: ["body": body], id: "teams/update-discussion-comment-legacy")
        }

        /// Delete a discussion comment (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a discussion comment](https://docs.github.com/rest/reference/teams#delete-a-discussion-comment) endpoint.
        /// 
        /// Deletes a comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#delete-a-discussion-comment-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "teams/delete-discussion-comment-legacy")
        }
    }
}