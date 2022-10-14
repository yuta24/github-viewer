// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.CustomRoles {
    public func roleID(_ roleID: Int) -> WithRoleID {
        WithRoleID(path: "\(path)/\(roleID)")
    }

    public struct WithRoleID {
        /// Path: `/orgs/{org}/custom_roles/{role_id}`
        public let path: String

        /// Update a custom role
        ///
        /// **Note**: This operation is in beta and subject to change.
        /// 
        /// Updates a custom repository role that can be used by all repositories owned by the organization.
        /// 
        /// To use this endpoint the authenticated user must be an administrator for the organization and must use an access token with `admin:org` scope.
        /// GitHub Apps must have the `organization_custom_roles:write` organization permission to use this endpoint.
        /// 
        /// For more information about custom repository roles, see "[Managing custom repository roles for an organization](https://docs.github.com/organizations/managing-peoples-access-to-your-organization-with-roles/managing-custom-repository-roles-for-an-organization)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#update-a-custom-role)
        public func patch(_ body: PatchRequest) -> Request<GitHubAPI.OrganizationCustomRepositoryRole> {
            Request(method: "PATCH", url: path, body: body, id: "orgs/update-custom-role")
        }

        public struct PatchRequest: Encodable {
            /// The name of the custom role.
            public var name: String?
            /// A short description about who this role is for or what permissions it grants.
            public var description: String?
            /// The system role from which this role inherits permissions.
            public var baseRole: BaseRole?
            /// A list of additional permissions included in this role. If specified, these permissions will replace any currently set on the role.
            public var permissions: [String]?

            /// The system role from which this role inherits permissions.
            public enum BaseRole: String, Codable, CaseIterable {
                case read
                case triage
                case write
                case maintain
            }

            public init(name: String? = nil, description: String? = nil, baseRole: BaseRole? = nil, permissions: [String]? = nil) {
                self.name = name
                self.description = description
                self.baseRole = baseRole
                self.permissions = permissions
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(name, forKey: "name")
                try values.encodeIfPresent(description, forKey: "description")
                try values.encodeIfPresent(baseRole, forKey: "base_role")
                try values.encodeIfPresent(permissions, forKey: "permissions")
            }
        }

        /// Delete a custom role
        ///
        /// **Note**: This operation is in beta and is subject to change.
        /// 
        /// Deletes a custom role from an organization. Once the custom role has been deleted, any
        /// user, team, or invitation with the deleted custom role will be reassigned the inherited role.
        /// 
        /// To use this endpoint the authenticated user must be an administrator for the organization and must use an access token with `admin:org` scope.
        /// GitHub Apps must have the `organization_custom_roles:write` organization permission to use this endpoint.
        /// 
        /// For more information about custom repository roles, see "[Managing custom repository roles for an organization](https://docs.github.com/organizations/managing-peoples-access-to-your-organization-with-roles/managing-custom-repository-roles-for-an-organization)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#delete-a-custom-role)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "orgs/delete-custom-role")
        }
    }
}