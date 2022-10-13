// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }

    public struct Commits {
        /// Path: `/repos/{owner}/{repo}/commits`
        public let path: String

        /// List commits
        ///
        /// **Signature verification object**
        /// 
        /// The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:
        /// 
        /// | Name | Type | Description |
        /// | ---- | ---- | ----------- |
        /// | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. |
        /// | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. |
        /// | `signature` | `string` | The signature that was extracted from the commit. |
        /// | `payload` | `string` | The value that was signed. |
        /// 
        /// These are the possible values for `reason` in the `verification` object:
        /// 
        /// | Value | Description |
        /// | ----- | ----------- |
        /// | `expired_key` | The key that made the signature is expired. |
        /// | `not_signing_key` | The "signing" flag is not among the usage flags in the GPG key that made the signature. |
        /// | `gpgverify_error` | There was an error communicating with the signature verification service. |
        /// | `gpgverify_unavailable` | The signature verification service is currently unavailable. |
        /// | `unsigned` | The object does not include a signature. |
        /// | `unknown_signature_type` | A non-PGP signature was found in the commit. |
        /// | `no_user` | No user was associated with the `committer` email address in the commit. |
        /// | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. |
        /// | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. |
        /// | `unknown_key` | The key that made the signature has not been registered with any user's account. |
        /// | `malformed_signature` | There was an error parsing the signature. |
        /// | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. |
        /// | `valid` | None of the above errors applied, so the signature is considered to be verified. |
        ///
        /// [API method documentation](https://docs.github.com/rest/commits/commits#list-commits)
        public func get(parameters: GetParameters? = nil) -> Request<[GitHubAPI.Commit]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "repos/list-commits")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var sha: String?
            public var path: String?
            public var author: String?
            public var since: Date?
            public var until: Date?
            public var perPage: Int?
            public var page: Int?

            public init(sha: String? = nil, path: String? = nil, author: String? = nil, since: Date? = nil, until: Date? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.sha = sha
                self.path = path
                self.author = author
                self.since = since
                self.until = until
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(sha, forKey: "sha")
                encoder.encode(path, forKey: "path")
                encoder.encode(author, forKey: "author")
                encoder.encode(since, forKey: "since")
                encoder.encode(until, forKey: "until")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}
