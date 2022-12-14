// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var pages: Pages {
        Pages(path: path + "/pages")
    }

    public struct Pages {
        /// Path: `/repos/{owner}/{repo}/pages`
        public let path: String

        /// Get a GitHub Pages site
        ///
        /// [API method documentation](https://docs.github.com/rest/pages#get-a-github-pages-site)
        public var get: Request<GitHubAPI.Page> {
            Request(method: "GET", url: path, id: "repos/get-pages")
        }

        /// Create a GitHub Pages site
        ///
        /// Configures a GitHub Pages site. For more information, see "[About GitHub Pages](/github/working-with-github-pages/about-github-pages)."
        ///
        /// [API method documentation](https://docs.github.com/rest/pages#create-a-github-pages-site)
        public func post(_ body: PostRequest) -> Request<GitHubAPI.Page> {
            Request(method: "POST", url: path, body: body, id: "repos/create-pages-site")
        }

        /// The source branch and directory used to publish your Pages site.
        public struct PostRequest: Encodable {
            public var a: A?
            public var b: B?

            public struct A: Encodable {
                public var source: AnyJSON

                public init(source: AnyJSON) {
                    self.source = source
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(source, forKey: "source")
                }
            }

            public struct B: Encodable {
                public var buildType: AnyJSON

                public init(buildType: AnyJSON) {
                    self.buildType = buildType
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(buildType, forKey: "build_type")
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

        /// Update information about a GitHub Pages site
        ///
        /// Updates information for a GitHub Pages site. For more information, see "[About GitHub Pages](/github/working-with-github-pages/about-github-pages).
        ///
        /// [API method documentation](https://docs.github.com/rest/pages#update-information-about-a-github-pages-site)
        public func put(_ body: PutRequest) -> Request<Void> {
            Request(method: "PUT", url: path, body: body, id: "repos/update-information-about-pages-site")
        }

        public struct PutRequest: Encodable {
            public var a: A?
            public var b: B?
            public var c: C?
            public var d: D?
            public var e: E?

            public struct A: Encodable {
                public var buildType: AnyJSON

                public init(buildType: AnyJSON) {
                    self.buildType = buildType
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(buildType, forKey: "build_type")
                }
            }

            public struct B: Encodable {
                public var source: AnyJSON

                public init(source: AnyJSON) {
                    self.source = source
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(source, forKey: "source")
                }
            }

            public struct C: Encodable {
                public var cname: AnyJSON

                public init(cname: AnyJSON) {
                    self.cname = cname
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(cname, forKey: "cname")
                }
            }

            public struct D: Encodable {
                public var `public`: AnyJSON

                public init(`public`: AnyJSON) {
                    self.public = `public`
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(`public`, forKey: "public")
                }
            }

            public struct E: Encodable {
                public var httpsEnforced: AnyJSON

                public init(httpsEnforced: AnyJSON) {
                    self.httpsEnforced = httpsEnforced
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(httpsEnforced, forKey: "https_enforced")
                }
            }

            public init(a: A? = nil, b: B? = nil, c: C? = nil, d: D? = nil, e: E? = nil) {
                self.a = a
                self.b = b
                self.c = c
                self.d = d
                self.e = e
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                if let value = a { try container.encode(value) }
                if let value = b { try container.encode(value) }
                if let value = c { try container.encode(value) }
                if let value = d { try container.encode(value) }
                if let value = e { try container.encode(value) }
            }
        }

        /// Delete a GitHub Pages site
        ///
        /// [API method documentation](https://docs.github.com/rest/pages#delete-a-github-pages-site)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/delete-pages-site")
        }
    }
}
