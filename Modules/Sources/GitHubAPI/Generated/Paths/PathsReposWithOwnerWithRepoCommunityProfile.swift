// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Community {
    public var profile: Profile {
        Profile(path: path + "/profile")
    }

    public struct Profile {
        /// Path: `/repos/{owner}/{repo}/community/profile`
        public let path: String

        /// Get community profile metrics
        ///
        /// Returns all community profile metrics for a repository. The repository must be public, and cannot be a fork.
        /// 
        /// The returned metrics include an overall health score, the repository description, the presence of documentation, the
        /// detected code of conduct, the detected license, and the presence of ISSUE\_TEMPLATE, PULL\_REQUEST\_TEMPLATE,
        /// README, and CONTRIBUTING files.
        /// 
        /// The `health_percentage` score is defined as a percentage of how many of
        /// these four documents are present: README, CONTRIBUTING, LICENSE, and
        /// CODE_OF_CONDUCT. For example, if all four documents are present, then
        /// the `health_percentage` is `100`. If only one is present, then the
        /// `health_percentage` is `25`.
        /// 
        /// `content_reports_enabled` is only returned for organization-owned repositories.
        ///
        /// [API method documentation](https://docs.github.com/rest/metrics/community#get-community-profile-metrics)
        public var get: Request<GitHubAPI.CommunityProfile> {
            Request(method: "GET", url: path, id: "repos/get-community-profile-metrics")
        }
    }
}
