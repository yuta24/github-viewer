// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var merge: Merge {
        Merge(path: path + "/merge")
    }

    public struct Merge {
        /// Path: `/repos/{owner}/{repo}/pulls/{pull_number}/merge`
        public let path: String

        /// Check if a pull request has been merged
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#check-if-a-pull-request-has-been-merged)
        public var get: Request<Void> {
            Request(method: "GET", url: path, id: "pulls/check-if-merged")
        }

        /// Merge a pull request
        ///
        /// This endpoint triggers [notifications](https://docs.github.com/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in secondary rate limiting. See "[Secondary rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#secondary-rate-limits)" and "[Dealing with secondary rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-secondary-rate-limits)" for details.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#merge-a-pull-request)
        public func put(_ body: PutRequest? = nil) -> Request<GitHubAPI.PullRequestMergeResult> {
            Request(method: "PUT", url: path, body: body, id: "pulls/merge")
        }

        public struct PutRequest: Encodable {
            /// Title for the automatic commit message.
            public var commitTitle: String?
            /// Extra detail to append to automatic commit message.
            public var commitMessage: String?
            /// SHA that pull request head must match to allow merge.
            public var sha: String?
            /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
            public var mergeMethod: MergeMethod?

            /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
            public enum MergeMethod: String, Codable, CaseIterable {
                case merge
                case squash
                case rebase
            }

            public init(commitTitle: String? = nil, commitMessage: String? = nil, sha: String? = nil, mergeMethod: MergeMethod? = nil) {
                self.commitTitle = commitTitle
                self.commitMessage = commitMessage
                self.sha = sha
                self.mergeMethod = mergeMethod
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(commitTitle, forKey: "commit_title")
                try values.encodeIfPresent(commitMessage, forKey: "commit_message")
                try values.encodeIfPresent(sha, forKey: "sha")
                try values.encodeIfPresent(mergeMethod, forKey: "merge_method")
            }
        }
    }
}
