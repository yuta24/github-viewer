// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var stats: Stats {
        Stats(path: path + "/stats")
    }

    public struct Stats {
        /// Path: `/repos/{owner}/{repo}/stats`
        public let path: String
    }
}
