// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.MarketplaceListing.Plans {
    public func planID(_ planID: Int) -> WithPlanID {
        WithPlanID(path: "\(path)/\(planID)")
    }

    public struct WithPlanID {
        /// Path: `/marketplace_listing/plans/{plan_id}`
        public let path: String
    }
}
