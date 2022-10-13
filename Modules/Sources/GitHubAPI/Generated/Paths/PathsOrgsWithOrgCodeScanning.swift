// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var codeScanning: CodeScanning {
        CodeScanning(path: path + "/code-scanning")
    }

    public struct CodeScanning {
        /// Path: `/orgs/{org}/code-scanning`
        public let path: String
    }
}
