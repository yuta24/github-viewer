// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Permissions {
    public var access: Access {
        Access(path: path + "/access")
    }

    public struct Access {
        /// Path: `/repos/{owner}/{repo}/actions/permissions/access`
        public let path: String

        /// Get the level of access for workflows outside of the repository
        ///
        /// Gets the level of access that workflows outside of the repository have to actions and reusable workflows in the repository.
        /// This endpoint only applies to internal repositories. For more information, see "[Managing GitHub Actions settings for a repository](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#allowing-access-to-components-in-an-internal-repository)."
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the
        /// repository `administration` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#get-workflow-access-level-to-a-repository)
        public var get: Request<GitHubAPI.ActionsWorkflowAccessToRepository> {
            Request(method: "GET", url: path, id: "actions/get-workflow-access-to-repository")
        }

        /// Set the level of access for workflows outside of the repository
        ///
        /// Sets the level of access that workflows outside of the repository have to actions and reusable workflows in the repository.
        /// This endpoint only applies to internal repositories. For more information, see "[Managing GitHub Actions settings for a repository](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#allowing-access-to-components-in-an-internal-repository)."
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the
        /// repository `administration` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#set-workflow-access-to-a-repository)
        public func put(_ body: GitHubAPI.ActionsWorkflowAccessToRepository) -> Request<Void> {
            Request(method: "PUT", url: path, body: body, id: "actions/set-workflow-access-to-repository")
        }
    }
}
