// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Gists.WithGistID {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }

    public struct Comments {
        /// Path: `/gists/{gist_id}/comments`
        public let path: String

        /// List gist comments
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#list-gist-comments)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.GistComment]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "gists/list-comments")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }

        /// Create a gist comment
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#create-a-gist-comment)
        public func post(body: String) -> Request<GitHubAPI.GistComment> {
            Request(method: "POST", url: path, body: ["body": body], id: "gists/create-comment")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }
    }
}
