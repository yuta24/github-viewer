// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var lfs: Lfs {
        Lfs(path: path + "/lfs")
    }

    public struct Lfs {
        /// Path: `/repos/{owner}/{repo}/lfs`
        public let path: String

        /// Enable Git LFS for a repository
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#enable-git-lfs-for-a-repository)
        public var put: Request<[String: AnyJSON]> {
            Request(method: "PUT", url: path, id: "repos/enable-lfs-for-repo")
        }

        /// Disable Git LFS for a repository
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#disable-git-lfs-for-a-repository)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/disable-lfs-for-repo")
        }
    }
}
