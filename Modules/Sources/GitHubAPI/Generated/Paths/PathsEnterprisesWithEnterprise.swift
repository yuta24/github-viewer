// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises {
    public func enterprise(_ enterprise: String) -> WithEnterprise {
        WithEnterprise(path: "\(path)/\(enterprise)")
    }

    public struct WithEnterprise {
        /// Path: `/enterprises/{enterprise}`
        public let path: String
    }
}
