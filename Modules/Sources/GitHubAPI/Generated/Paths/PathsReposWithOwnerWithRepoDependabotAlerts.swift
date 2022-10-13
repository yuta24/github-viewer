// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Dependabot {
    public var alerts: Alerts {
        Alerts(path: path + "/alerts")
    }

    public struct Alerts {
        /// Path: `/repos/{owner}/{repo}/dependabot/alerts`
        public let path: String

        /// List Dependabot alerts for a repository
        ///
        /// You must use an access token with the `security_events` scope to use this endpoint with private repositories.
        /// You can also use tokens with the `public_repo` scope for public repositories only.
        /// GitHub Apps must have **Dependabot alerts** read permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/dependabot#list-dependabot-alerts-for-a-repository)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.DependabotAlert]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "dependabot/list-alerts-for-repo")
        }

        public struct GetParameters {
            public var state: String?
            public var severity: String?
            public var ecosystem: String?
            public var package: String?
            public var manifest: String?
            /// The scope of the vulnerable dependency.
            public var scope: Scope?
            public var sort: Sort?
            public var direction: Direction?
            public var page: Int?
            public var perPage: Int?

            /// The scope of the vulnerable dependency.
            public enum Scope: String, Codable, CaseIterable {
                case development
                case runtime
            }

            public enum Sort: String, Codable, CaseIterable {
                case created
                case updated
            }

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(state: String? = nil, severity: String? = nil, ecosystem: String? = nil, package: String? = nil, manifest: String? = nil, scope: Scope? = nil, sort: Sort? = nil, direction: Direction? = nil, page: Int? = nil, perPage: Int? = nil) {
                self.state = state
                self.severity = severity
                self.ecosystem = ecosystem
                self.package = package
                self.manifest = manifest
                self.scope = scope
                self.sort = sort
                self.direction = direction
                self.page = page
                self.perPage = perPage
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(state, forKey: "state")
                encoder.encode(severity, forKey: "severity")
                encoder.encode(ecosystem, forKey: "ecosystem")
                encoder.encode(package, forKey: "package")
                encoder.encode(manifest, forKey: "manifest")
                encoder.encode(scope, forKey: "scope")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(direction, forKey: "direction")
                encoder.encode(page, forKey: "page")
                encoder.encode(perPage, forKey: "per_page")
                return encoder.items
            }
        }
    }
}
