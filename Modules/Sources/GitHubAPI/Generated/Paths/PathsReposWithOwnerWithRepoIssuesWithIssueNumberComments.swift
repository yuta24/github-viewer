// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }

    public struct Comments {
        /// Path: `/repos/{owner}/{repo}/issues/{issue_number}/comments`
        public let path: String

        /// List issue comments
        ///
        /// Issue Comments are ordered by ascending ID.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#list-issue-comments)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.IssueComment]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "issues/list-comments")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var since: Date?
            public var perPage: Int?
            public var page: Int?

            public init(since: Date? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.since = since
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(since, forKey: "since")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }

        /// Create an issue comment
        ///
        /// This endpoint triggers [notifications](https://docs.github.com/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in secondary rate limiting. See "[Secondary rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#secondary-rate-limits)" and "[Dealing with secondary rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-secondary-rate-limits)" for details.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#create-an-issue-comment)
        public func post(body: String) -> Request<GitHubAPI.IssueComment> {
            Request(method: "POST", url: path, body: ["body": body], id: "issues/create-comment")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }
    }
}
