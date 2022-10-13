// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.MarketplaceListing.Accounts {
    public func accountID(_ accountID: Int) -> WithAccountID {
        WithAccountID(path: "\(path)/\(accountID)")
    }

    public struct WithAccountID {
        /// Path: `/marketplace_listing/accounts/{account_id}`
        public let path: String

        /// Get a subscription plan for an account
        ///
        /// Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.
        /// 
        /// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#get-a-subscription-plan-for-an-account)
        public var get: Request<GitHubAPI.MarketplacePurchase> {
            Request(method: "GET", url: path, id: "apps/get-subscription-plan-for-account")
        }
    }
}
