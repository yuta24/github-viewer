// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var timeline: Timeline {
        Timeline(path: path + "/timeline")
    }

    public struct Timeline {
        /// Path: `/repos/{owner}/{repo}/issues/{issue_number}/timeline`
        public let path: String

        /// List timeline events for an issue
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#list-timeline-events-for-an-issue)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.TimelineIssueEvents]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "issues/list-events-for-timeline")
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
