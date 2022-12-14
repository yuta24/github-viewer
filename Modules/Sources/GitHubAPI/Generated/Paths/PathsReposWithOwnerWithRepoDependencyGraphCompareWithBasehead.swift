// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.DependencyGraph.Compare {
    public func basehead(_ basehead: String) -> WithBasehead {
        WithBasehead(path: "\(path)/\(basehead)")
    }

    public struct WithBasehead {
        /// Path: `/repos/{owner}/{repo}/dependency-graph/compare/{basehead}`
        public let path: String

        /// Get a diff of the dependencies between commits
        ///
        /// Gets the diff of the dependency changes between two commits of a repository, based on the changes to the dependency manifests made in those commits.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/dependency-graph#get-a-diff-of-the-dependencies-between-commits)
        public func get(name: String? = nil) -> Request<[DependencyGraphDiffItem]> {
            Request(method: "GET", url: path, query: makeGetQuery(name), id: "dependency-graph/diff-range")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ name: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(name, forKey: "name")
            return encoder.items
        }
    }
}
