// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Traffic {
    public var views: Views {
        Views(path: path + "/views")
    }

    public struct Views {
        /// Path: `/repos/{owner}/{repo}/traffic/views`
        public let path: String

        /// Get page views
        ///
        /// Get the total number of views and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.
        ///
        /// [API method documentation](https://docs.github.com/rest/metrics/traffic#get-page-views)
        public func get(per: Per? = nil) -> Request<GitHubAPI.ViewTraffic> {
            Request(method: "GET", url: path, query: makeGetQuery(per), id: "repos/get-views")
        }

        private func makeGetQuery(_ per: Per?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(per, forKey: "per")
            return encoder.items
        }

        public enum Per: String, Codable, CaseIterable {
            case empty = ""
            case day
            case week
        }
    }
}
