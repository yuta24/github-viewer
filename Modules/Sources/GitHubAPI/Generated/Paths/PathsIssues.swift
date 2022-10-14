// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var issues: Issues {
        Issues(path: "/issues")
    }

    public struct Issues {
        /// Path: `/issues`
        public let path: String

        /// List issues assigned to the authenticated user
        ///
        /// List issues assigned to the authenticated user across all visible repositories including owned repositories, member
        /// repositories, and organization repositories. You can use the `filter` query parameter to fetch issues that are not
        /// necessarily assigned to you.
        /// 
        /// 
        /// **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this
        /// reason, "Issues" endpoints may return both issues and pull requests in the response. You can identify pull requests by
        /// the `pull_request` key. Be aware that the `id` of a pull request returned from "Issues" endpoints will be an _issue id_. To find out the pull
        /// request id, use the "[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)" endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#list-issues-assigned-to-the-authenticated-user)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.Issue]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "issues/list")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var filter: Filter?
            public var state: State?
            public var labels: String?
            public var sort: Sort?
            public var direction: Direction?
            public var since: Date?
            public var isCollab: Bool?
            public var isOrgs: Bool?
            public var isOwned: Bool?
            public var isPulls: Bool?
            public var perPage: Int?
            public var page: Int?

            public enum Filter: String, Codable, CaseIterable {
                case assigned
                case created
                case mentioned
                case subscribed
                case repos
                case all
            }

            public enum State: String, Codable, CaseIterable {
                case `open`
                case closed
                case all
            }

            public enum Sort: String, Codable, CaseIterable {
                case created
                case updated
                case comments
            }

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(filter: Filter? = nil, state: State? = nil, labels: String? = nil, sort: Sort? = nil, direction: Direction? = nil, since: Date? = nil, isCollab: Bool? = nil, isOrgs: Bool? = nil, isOwned: Bool? = nil, isPulls: Bool? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.filter = filter
                self.state = state
                self.labels = labels
                self.sort = sort
                self.direction = direction
                self.since = since
                self.isCollab = isCollab
                self.isOrgs = isOrgs
                self.isOwned = isOwned
                self.isPulls = isPulls
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(filter, forKey: "filter")
                encoder.encode(state, forKey: "state")
                encoder.encode(labels, forKey: "labels")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(direction, forKey: "direction")
                encoder.encode(since, forKey: "since")
                encoder.encode(isCollab, forKey: "collab")
                encoder.encode(isOrgs, forKey: "orgs")
                encoder.encode(isOwned, forKey: "owned")
                encoder.encode(isPulls, forKey: "pulls")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}