// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Permissions {
    public var workflow: Workflow {
        Workflow(path: path + "/workflow")
    }

    public struct Workflow {
        /// Path: `/repos/{owner}/{repo}/actions/permissions/workflow`
        public let path: String

        /// Get default workflow permissions for a repository
        ///
        /// Gets the default workflow permissions granted to the `GITHUB_TOKEN` when running workflows in a repository,
        /// as well as if GitHub Actions can submit approving pull request reviews.
        /// For more information, see "[Setting the permissions of the GITHUB_TOKEN for your repository](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#setting-the-permissions-of-the-github_token-for-your-repository)."
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the repository `administration` permission to use this API.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#get-default-workflow-permissions-for-a-repository)
        public var get: Request<GitHubAPI.ActionsGetDefaultWorkflowPermissions> {
            Request(method: "GET", url: path, id: "actions/get-github-actions-default-workflow-permissions-repository")
        }

        /// Set default workflow permissions for a repository
        ///
        /// Sets the default workflow permissions granted to the `GITHUB_TOKEN` when running workflows in a repository, and sets if GitHub Actions
        /// can submit approving pull request reviews.
        /// For more information, see "[Setting the permissions of the GITHUB_TOKEN for your repository](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#setting-the-permissions-of-the-github_token-for-your-repository)."
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the repository `administration` permission to use this API.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#set-default-workflow-permissions-for-a-repository)
        public func put(_ body: GitHubAPI.ActionsSetDefaultWorkflowPermissions) -> Request<Void> {
            Request(method: "PUT", url: path, body: body, id: "actions/set-github-actions-default-workflow-permissions-repository")
        }
    }
}