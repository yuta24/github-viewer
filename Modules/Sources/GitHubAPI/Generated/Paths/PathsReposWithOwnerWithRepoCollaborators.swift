// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var collaborators: Collaborators {
        Collaborators(path: path + "/collaborators")
    }

    public struct Collaborators {
        /// Path: `/repos/{owner}/{repo}/collaborators`
        public let path: String

        /// List repository collaborators
        ///
        /// For organization-owned repositories, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners.
        /// Organization members with write, maintain, or admin privileges on the organization-owned repository can use this endpoint.
        /// 
        /// Team members will include the members of child teams.
        /// 
        /// You must authenticate using an access token with the `read:org` and `repo` scopes with push access to use this
        /// endpoint. GitHub Apps must have the `members` organization permission and `metadata` repository permission to use this
        /// endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/collaborators/collaborators#list-repository-collaborators)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.Collaborator]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "repos/list-collaborators")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var affiliation: Affiliation?
            public var permission: Permission?
            public var perPage: Int?
            public var page: Int?

            public enum Affiliation: String, Codable, CaseIterable {
                case outside
                case direct
                case all
            }

            public enum Permission: String, Codable, CaseIterable {
                case pull
                case triage
                case push
                case maintain
                case admin
            }

            public init(affiliation: Affiliation? = nil, permission: Permission? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.affiliation = affiliation
                self.permission = permission
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(affiliation, forKey: "affiliation")
                encoder.encode(permission, forKey: "permission")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}