// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Migrations.WithMigrationID.Repos {
    public func repoName(_ repoName: String) -> WithRepoName {
        WithRepoName(path: "\(path)/\(repoName)")
    }

    public struct WithRepoName {
        /// Path: `/orgs/{org}/migrations/{migration_id}/repos/{repo_name}`
        public let path: String
    }
}