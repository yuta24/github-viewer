// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Runners {
    public var registrationToken: RegistrationToken {
        RegistrationToken(path: path + "/registration-token")
    }

    public struct RegistrationToken {
        /// Path: `/repos/{owner}/{repo}/actions/runners/registration-token`
        public let path: String

        /// Create a registration token for a repository
        ///
        /// Returns a token that you can pass to the `config` script. The token expires after one hour. You must authenticate
        /// using an access token with the `repo` scope to use this endpoint.
        /// 
        /// #### Example using registration token
        ///  
        /// Configure your self-hosted runner, replacing `TOKEN` with the registration token provided by this endpoint.
        /// 
        /// ```
        /// ./config.sh --url https://github.com/octo-org/octo-repo-artifacts --token TOKEN
        /// ```
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#create-a-registration-token-for-a-repository)
        public var post: Request<GitHubAPI.AuthenticationToken> {
            Request(method: "POST", url: path, id: "actions/create-registration-token-for-repo")
        }
    }
}
