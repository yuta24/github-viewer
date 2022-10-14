// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Caches {
    public func cacheID(_ cacheID: Int) -> WithCacheID {
        WithCacheID(path: "\(path)/\(cacheID)")
    }

    public struct WithCacheID {
        /// Path: `/repos/{owner}/{repo}/actions/caches/{cache_id}`
        public let path: String

        /// Delete a GitHub Actions cache for a repository (using a cache ID)
        ///
        /// Deletes a GitHub Actions cache for a repository, using a cache ID.
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint.
        /// 
        /// GitHub Apps must have the `actions:write` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/actions/cache#delete-a-github-actions-cache-for-a-repository-using-a-cache-id)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "actions/delete-actions-cache-by-id")
        }
    }
}