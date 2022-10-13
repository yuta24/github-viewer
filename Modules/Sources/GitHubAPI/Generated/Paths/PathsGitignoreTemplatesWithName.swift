// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Gitignore.Templates {
    public func name(_ name: String) -> WithName {
        WithName(path: "\(path)/\(name)")
    }

    public struct WithName {
        /// Path: `/gitignore/templates/{name}`
        public let path: String

        /// Get a gitignore template
        ///
        /// The API also allows fetching the source of a single template.
        /// Use the raw [media type](https://docs.github.com/rest/overview/media-types/) to get the raw contents.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gitignore#get-a-gitignore-template)
        public var get: Request<GitHubAPI.GitignoreTemplate> {
            Request(method: "GET", url: path, id: "gitignore/get-template")
        }
    }
}
