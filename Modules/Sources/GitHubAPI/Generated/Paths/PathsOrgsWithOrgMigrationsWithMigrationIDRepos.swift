// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Migrations.WithMigrationID {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }

    public struct Repos {
        /// Path: `/orgs/{org}/migrations/{migration_id}/repos`
        public let path: String
    }
}
