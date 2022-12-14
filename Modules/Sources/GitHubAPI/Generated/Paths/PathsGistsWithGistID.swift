// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Gists {
    public func gistID(_ gistID: String) -> WithGistID {
        WithGistID(path: "\(path)/\(gistID)")
    }

    public struct WithGistID {
        /// Path: `/gists/{gist_id}`
        public let path: String

        /// Get a gist
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#get-a-gist)
        public var get: Request<GitHubAPI.GistSimple> {
            Request(method: "GET", url: path, id: "gists/get")
        }

        /// Update a gist
        ///
        /// Allows you to update or delete a gist file and rename gist files. Files from the previous version of the gist that aren't explicitly changed during an edit are unchanged.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists/#update-a-gist)
        public func patch(_ body: PatchRequest) -> Request<GitHubAPI.GistSimple> {
            Request(method: "PATCH", url: path, body: body, id: "gists/update")
        }

        public struct PatchRequest: Encodable {
            public var a: A?
            public var b: B?

            public struct A: Encodable {
                public var description: AnyJSON

                public init(description: AnyJSON) {
                    self.description = description
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(description, forKey: "description")
                }
            }

            public struct B: Encodable {
                public var files: AnyJSON

                public init(files: AnyJSON) {
                    self.files = files
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(files, forKey: "files")
                }
            }

            public init(a: A? = nil, b: B? = nil) {
                self.a = a
                self.b = b
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                if let value = a { try container.encode(value) }
                if let value = b { try container.encode(value) }
            }
        }

        /// Delete a gist
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#delete-a-gist)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "gists/delete")
        }
    }
}
