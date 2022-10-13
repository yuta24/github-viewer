// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername {
    public var receivedEvents: ReceivedEvents {
        ReceivedEvents(path: path + "/received_events")
    }

    public struct ReceivedEvents {
        /// Path: `/users/{username}/received_events`
        public let path: String

        /// List events received by the authenticated user
        ///
        /// These are events that you've received by watching repos and following users. If you are authenticated as the given user, you will see private events. Otherwise, you'll only see public events.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-events-received-by-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.Event]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "activity/list-received-events-for-user")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
