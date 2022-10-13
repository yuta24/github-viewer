// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername {
    public var events: Events {
        Events(path: path + "/events")
    }

    public struct Events {
        /// Path: `/users/{username}/events`
        public let path: String

        /// List events for the authenticated user
        ///
        /// If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-events-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.Event]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "activity/list-events-for-authenticated-user")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
