// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var memberships: Memberships {
        Memberships(path: path + "/memberships")
    }

    public struct Memberships {
        /// Path: `/user/memberships`
        public let path: String
    }
}
