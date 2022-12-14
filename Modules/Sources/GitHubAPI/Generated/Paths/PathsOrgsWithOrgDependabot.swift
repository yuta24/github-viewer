// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var dependabot: Dependabot {
        Dependabot(path: path + "/dependabot")
    }

    public struct Dependabot {
        /// Path: `/orgs/{org}/dependabot`
        public let path: String
    }
}
