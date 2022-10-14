// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Traffic {
    public var clones: Clones {
        Clones(path: path + "/clones")
    }

    public struct Clones {
        /// Path: `/repos/{owner}/{repo}/traffic/clones`
        public let path: String

        /// Get repository clones
        ///
        /// Get the total number of clones and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.
        ///
        /// [API method documentation](https://docs.github.com/rest/metrics/traffic#get-repository-clones)
        public func get(per: Per? = nil) -> Request<GitHubAPI.CloneTraffic> {
            Request(method: "GET", url: path, query: makeGetQuery(per), id: "repos/get-clones")
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