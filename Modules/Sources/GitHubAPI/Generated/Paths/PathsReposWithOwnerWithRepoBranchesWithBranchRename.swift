// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Branches.WithBranch {
    public var rename: Rename {
        Rename(path: path + "/rename")
    }

    public struct Rename {
        /// Path: `/repos/{owner}/{repo}/branches/{branch}/rename`
        public let path: String

        /// Rename a branch
        ///
        /// Renames a branch in a repository.
        /// 
        /// **Note:** Although the API responds immediately, the branch rename process might take some extra time to complete in the background. You won't be able to push to the old branch name while the rename process is in progress. For more information, see "[Renaming a branch](https://docs.github.com/github/administering-a-repository/renaming-a-branch)".
        /// 
        /// The permissions required to use this endpoint depends on whether you are renaming the default branch.
        /// 
        /// To rename a non-default branch:
        /// 
        /// * Users must have push access.
        /// * GitHub Apps must have the `contents:write` repository permission.
        /// 
        /// To rename the default branch:
        /// 
        /// * Users must have admin or owner permissions.
        /// * GitHub Apps must have the `administration:write` repository permission.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#rename-a-branch)
        public func post(newName: String) -> Request<GitHubAPI.BranchWithProtection> {
            Request(method: "POST", url: path, body: ["new_name": newName], id: "repos/rename-branch")
        }
    }
}
