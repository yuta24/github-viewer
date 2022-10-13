// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var events: Events {
        Events(path: "/events")
    }

    public struct Events {
        /// Path: `/events`
        public let path: String

        /// List public events
        ///
        /// We delay the public events feed by five minutes, which means the most recent event returned by the public events API actually occurred at least five minutes ago.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-public-events)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.Event]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "activity/list-public-events")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
