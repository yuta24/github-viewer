// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var automatedSecurityFixes: AutomatedSecurityFixes {
        AutomatedSecurityFixes(path: path + "/automated-security-fixes")
    }

    public struct AutomatedSecurityFixes {
        /// Path: `/repos/{owner}/{repo}/automated-security-fixes`
        public let path: String

        /// Enable automated security fixes
        ///
        /// Enables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see "[Configuring automated security fixes](https://docs.github.com/en/articles/configuring-automated-security-fixes)".
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#enable-automated-security-fixes)
        public var put: Request<Void> {
            Request(method: "PUT", url: path, id: "repos/enable-automated-security-fixes")
        }

        /// Disable automated security fixes
        ///
        /// Disables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see "[Configuring automated security fixes](https://docs.github.com/en/articles/configuring-automated-security-fixes)".
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#disable-automated-security-fixes)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/disable-automated-security-fixes")
        }
    }
}
