// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.AppManifests {
    public func code(_ code: String) -> WithCode {
        WithCode(path: "\(path)/\(code)")
    }

    public struct WithCode {
        /// Path: `/app-manifests/{code}`
        public let path: String
    }
}
