// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Email {
    public var visibility: Visibility {
        Visibility(path: path + "/visibility")
    }

    public struct Visibility {
        /// Path: `/user/email/visibility`
        public let path: String

        /// Set primary email visibility for the authenticated user
        ///
        /// Sets the visibility for your primary email addresses.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#set-primary-email-visibility-for-the-authenticated-user)
        public func patch(visibility: PatchRequest.Visibility) -> Request<[GitHubAPI.Email]> {
            Request(method: "PATCH", url: path, body: PatchRequest(visibility: visibility), id: "users/set-primary-email-visibility-for-authenticated-user")
        }

        public struct PatchRequest: Encodable {
            /// Denotes whether an email is publicly visible.
            public var visibility: Visibility

            /// Denotes whether an email is publicly visible.
            public enum Visibility: String, Codable, CaseIterable {
                case `public`
                case `private`
            }

            public init(visibility: Visibility) {
                self.visibility = visibility
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(visibility, forKey: "visibility")
            }
        }
    }
}
