// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.MarketplaceListing.Stubbed {
    public var plans: Plans {
        Plans(path: path + "/plans")
    }

    public struct Plans {
        /// Path: `/marketplace_listing/stubbed/plans`
        public let path: String

        /// List plans (stubbed)
        ///
        /// Lists all plans that are part of your GitHub Marketplace listing.
        /// 
        /// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#list-plans-stubbed)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[GitHubAPI.MarketplaceListingPlan]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "apps/list-plans-stubbed")
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
