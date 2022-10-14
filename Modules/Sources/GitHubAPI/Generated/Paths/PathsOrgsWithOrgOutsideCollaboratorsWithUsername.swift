// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.OutsideCollaborators {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: "\(path)/\(username)")
    }

    public struct WithUsername {
        /// Path: `/orgs/{org}/outside_collaborators/{username}`
        public let path: String

        /// Convert an organization member to outside collaborator
        ///
        /// When an organization member is converted to an outside collaborator, they'll only have access to the repositories that their current team membership allows. The user will no longer be a member of the organization. For more information, see "[Converting an organization member to an outside collaborator](https://docs.github.com/articles/converting-an-organization-member-to-an-outside-collaborator/)". Converting an organization member to an outside collaborator may be restricted by enterprise administrators. For more information, see "[Enforcing repository management policies in your enterprise](https://docs.github.com/enterprise-cloud@latest/admin/policies/enforcing-policies-for-your-enterprise/enforcing-repository-management-policies-in-your-enterprise#enforcing-a-policy-for-inviting-outside-collaborators-to-repositories)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#convert-an-organization-member-to-outside-collaborator)
        public func put(isAsync: Bool? = nil) -> Request<Void> {
            Request(method: "PUT", url: path, body: ["async": isAsync], id: "orgs/convert-member-to-outside-collaborator")
        }

        /// Remove outside collaborator from an organization
        ///
        /// Removing a user from this list will remove them from all the organization's repositories.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#remove-outside-collaborator-from-an-organization)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "orgs/remove-outside-collaborator")
        }
    }
}