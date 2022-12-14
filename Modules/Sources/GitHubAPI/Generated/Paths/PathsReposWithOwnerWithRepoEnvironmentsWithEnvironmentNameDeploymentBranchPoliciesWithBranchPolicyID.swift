// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Environments.WithEnvironmentName.DeploymentBranchPolicies {
    public func branchPolicyID(_ branchPolicyID: Int) -> WithBranchPolicyID {
        WithBranchPolicyID(path: "\(path)/\(branchPolicyID)")
    }

    public struct WithBranchPolicyID {
        /// Path: `/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}`
        public let path: String

        /// Get a deployment branch policy
        ///
        /// Gets a deployment branch policy for an environment.
        /// 
        /// Anyone with read access to the repository can use this endpoint. If the repository is private, you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/deployments/branch-policies#get-deployment-branch-policy)
        public var get: Request<GitHubAPI.DeploymentBranchPolicy> {
            Request(method: "GET", url: path, id: "repos/get-deployment-branch-policy")
        }

        /// Update a deployment branch policy
        ///
        /// Updates a deployment branch policy for an environment.
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the `administration:write` permission for the repository to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/deployments/branch-policies#update-deployment-branch-policy)
        public func put(_ body: GitHubAPI.DeploymentBranchPolicyNamePattern) -> Request<GitHubAPI.DeploymentBranchPolicy> {
            Request(method: "PUT", url: path, body: body, id: "repos/update-deployment-branch-policy")
        }

        /// Delete a deployment branch policy
        ///
        /// Deletes a deployment branch policy for an environment.
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint. GitHub Apps must have the `administration:write` permission for the repository to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/deployments/branch-policies#delete-deployment-branch-policy)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/delete-deployment-branch-policy")
        }
    }
}
