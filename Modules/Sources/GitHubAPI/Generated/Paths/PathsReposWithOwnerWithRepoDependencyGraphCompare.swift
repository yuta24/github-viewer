// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.DependencyGraph {
    public var compare: Compare {
        Compare(path: path + "/compare")
    }

    public struct Compare {
        /// Path: `/repos/{owner}/{repo}/dependency-graph/compare`
        public let path: String
    }
}
