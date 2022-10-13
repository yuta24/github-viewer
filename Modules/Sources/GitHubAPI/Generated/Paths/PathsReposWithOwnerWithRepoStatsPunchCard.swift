// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Stats {
    public var punchCard: PunchCard {
        PunchCard(path: path + "/punch_card")
    }

    public struct PunchCard {
        /// Path: `/repos/{owner}/{repo}/stats/punch_card`
        public let path: String

        /// Get the hourly commit count for each day
        ///
        /// Each array contains the day number, hour number, and number of commits:
        /// 
        /// *   `0-6`: Sunday - Saturday
        /// *   `0-23`: Hour of day
        /// *   Number of commits
        /// 
        /// For example, `[2, 14, 25]` indicates that there were 25 total commits, during the 2:00pm hour on Tuesdays. All times are based on the time zone of individual commits.
        ///
        /// [API method documentation](https://docs.github.com/rest/statistics/repos#get-the-hourly-commit-count-for-each-day)
        public var get: Request<[[Int]]> {
            Request(method: "GET", url: path, id: "repos/get-punch-card-stats")
        }
    }
}
