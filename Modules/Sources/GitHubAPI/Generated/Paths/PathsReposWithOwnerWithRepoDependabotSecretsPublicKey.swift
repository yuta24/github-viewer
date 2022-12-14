// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Dependabot.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }

    public struct PublicKey {
        /// Path: `/repos/{owner}/{repo}/dependabot/secrets/public-key`
        public let path: String

        /// Get a repository public key
        ///
        /// Gets your public key, which you need to encrypt secrets. You need to encrypt a secret before you can create or update secrets. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the `repo` scope. GitHub Apps must have the `dependabot_secrets` repository permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/dependabot#get-a-repository-public-key)
        public var get: Request<GitHubAPI.DependabotPublicKey> {
            Request(method: "GET", url: path, id: "dependabot/get-repo-public-key")
        }
    }
}
