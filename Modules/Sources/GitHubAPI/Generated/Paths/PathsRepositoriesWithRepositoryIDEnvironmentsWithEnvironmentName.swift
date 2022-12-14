// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repositories.WithRepositoryID.Environments {
    public func environmentName(_ environmentName: String) -> WithEnvironmentName {
        WithEnvironmentName(path: "\(path)/\(environmentName)")
    }

    public struct WithEnvironmentName {
        /// Path: `/repositories/{repository_id}/environments/{environment_name}`
        public let path: String
    }
}
