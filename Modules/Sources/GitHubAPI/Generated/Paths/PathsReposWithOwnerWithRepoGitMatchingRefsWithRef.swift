// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Git.MatchingRefs {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: "\(path)/\(ref)")
    }

    public struct WithRef {
        /// Path: `/repos/{owner}/{repo}/git/matching-refs/{ref}`
        public let path: String

        /// List matching references
        ///
        /// Returns an array of references from your Git database that match the supplied name. The `:ref` in the URL must be formatted as `heads/<branch name>` for branches and `tags/<tag name>` for tags. If the `:ref` doesn't exist in the repository, but existing refs start with `:ref`, they will be returned as an array.
        /// 
        /// When you use this endpoint without providing a `:ref`, it will return an array of all the references from your Git database, including notes and stashes if they exist on the server. Anything in the namespace is returned, not just `heads` and `tags`.
        /// 
        /// **Note:** You need to explicitly [request a pull request](https://docs.github.com/rest/reference/pulls#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see "[Checking mergeability of pull requests](https://docs.github.com/rest/guides/getting-started-with-the-git-database-api#checking-mergeability-of-pull-requests)".
        /// 
        /// If you request matching references for a branch named `feature` but the branch `feature` doesn't exist, the response can still include other matching head refs that start with the word `feature`, such as `featureA` and `featureB`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/git#list-matching-references)
        public var get: Request<[GitHubAPI.GitRef]> {
            Request(method: "GET", url: path, id: "git/list-matching-refs")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }
    }
}
