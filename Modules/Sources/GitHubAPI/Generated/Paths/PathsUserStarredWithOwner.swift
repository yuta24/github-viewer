// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Starred {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: "\(path)/\(owner)")
    }

    public struct WithOwner {
        /// Path: `/user/starred/{owner}`
        public let path: String
    }
}
