// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Stats {
    public var participation: Participation {
        Participation(path: path + "/participation")
    }

    public struct Participation {
        /// Path: `/repos/{owner}/{repo}/stats/participation`
        public let path: String

        /// Get the weekly commit count
        ///
        /// Returns the total commit counts for the `owner` and total commit counts in `all`. `all` is everyone combined, including the `owner` in the last 52 weeks. If you'd like to get the commit counts for non-owners, you can subtract `owner` from `all`.
        /// 
        /// The array order is oldest week (index 0) to most recent week.
        ///
        /// [API method documentation](https://docs.github.com/rest/metrics/statistics#get-the-weekly-commit-count)
        public var get: Request<GitHubAPI.ParticipationStats> {
            Request(method: "GET", url: path, id: "repos/get-participation-stats")
        }
    }
}
