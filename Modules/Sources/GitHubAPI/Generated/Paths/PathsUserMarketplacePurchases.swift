// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var marketplacePurchases: MarketplacePurchases {
        MarketplacePurchases(path: path + "/marketplace_purchases")
    }

    public struct MarketplacePurchases {
        /// Path: `/user/marketplace_purchases`
        public let path: String

        /// List subscriptions for the authenticated user
        ///
        /// Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#list-subscriptions-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.UserMarketplacePurchase]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "apps/list-subscriptions-for-authenticated-user")
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
    }
}
