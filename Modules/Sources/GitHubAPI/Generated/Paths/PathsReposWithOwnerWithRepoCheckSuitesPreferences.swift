// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.CheckSuites {
    public var preferences: Preferences {
        Preferences(path: path + "/preferences")
    }

    public struct Preferences {
        /// Path: `/repos/{owner}/{repo}/check-suites/preferences`
        public let path: String

        /// Update repository preferences for check suites
        ///
        /// Changes the default automatic flow when creating check suites. By default, a check suite is automatically created each time code is pushed to a repository. When you disable the automatic creation of check suites, you can manually [Create a check suite](https://docs.github.com/rest/reference/checks#create-a-check-suite). You must have admin permissions in the repository to set preferences for check suites.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/checks#update-repository-preferences-for-check-suites)
        public func patch(autoTriggerChecks: [PatchRequest.AutoTriggerCheck]? = nil) -> Request<GitHubAPI.CheckSuitePreference> {
            Request(method: "PATCH", url: path, body: PatchRequest(autoTriggerChecks: autoTriggerChecks), id: "checks/set-suites-preferences")
        }

        public struct PatchRequest: Encodable {
            /// Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default. See the [`auto_trigger_checks` object](https://docs.github.com/rest/reference/checks#auto_trigger_checks-object) description for details.
            public var autoTriggerChecks: [AutoTriggerCheck]?

            public struct AutoTriggerCheck: Encodable {
                /// The `id` of the GitHub App.
                public var appID: Int
                /// Set to `true` to enable automatic creation of CheckSuite events upon pushes to the repository, or `false` to disable them.
                public var isSetting: Bool

                public init(appID: Int, isSetting: Bool) {
                    self.appID = appID
                    self.isSetting = isSetting
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(appID, forKey: "app_id")
                    try values.encode(isSetting, forKey: "setting")
                }
            }

            public init(autoTriggerChecks: [AutoTriggerCheck]? = nil) {
                self.autoTriggerChecks = autoTriggerChecks
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(autoTriggerChecks, forKey: "auto_trigger_checks")
            }
        }
    }
}
