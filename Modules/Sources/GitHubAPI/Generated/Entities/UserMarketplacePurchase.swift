// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct UserMarketplacePurchase: Codable {
    /// Example: "monthly"
    public var billingCycle: String
    /// Example: "2017-11-11T00:00:00Z"
    public var nextBillingDate: Date?
    public var unitCount: Int?
    /// Example: true
    public var isOnFreeTrial: Bool
    /// Example: "2017-11-11T00:00:00Z"
    public var freeTrialEndsOn: Date?
    /// Example: "2017-11-02T01:12:12Z"
    public var updatedAt: Date?
    /// Marketplace Account
    public var account: MarketplaceAccount
    /// Marketplace Listing Plan
    public var plan: MarketplaceListingPlan

    public init(billingCycle: String, nextBillingDate: Date? = nil, unitCount: Int? = nil, isOnFreeTrial: Bool, freeTrialEndsOn: Date? = nil, updatedAt: Date? = nil, account: MarketplaceAccount, plan: MarketplaceListingPlan) {
        self.billingCycle = billingCycle
        self.nextBillingDate = nextBillingDate
        self.unitCount = unitCount
        self.isOnFreeTrial = isOnFreeTrial
        self.freeTrialEndsOn = freeTrialEndsOn
        self.updatedAt = updatedAt
        self.account = account
        self.plan = plan
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.billingCycle = try values.decode(String.self, forKey: "billing_cycle")
        self.nextBillingDate = try values.decodeIfPresent(Date.self, forKey: "next_billing_date")
        self.unitCount = try values.decodeIfPresent(Int.self, forKey: "unit_count")
        self.isOnFreeTrial = try values.decode(Bool.self, forKey: "on_free_trial")
        self.freeTrialEndsOn = try values.decodeIfPresent(Date.self, forKey: "free_trial_ends_on")
        self.updatedAt = try values.decodeIfPresent(Date.self, forKey: "updated_at")
        self.account = try values.decode(MarketplaceAccount.self, forKey: "account")
        self.plan = try values.decode(MarketplaceListingPlan.self, forKey: "plan")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(billingCycle, forKey: "billing_cycle")
        try values.encodeIfPresent(nextBillingDate, forKey: "next_billing_date")
        try values.encodeIfPresent(unitCount, forKey: "unit_count")
        try values.encode(isOnFreeTrial, forKey: "on_free_trial")
        try values.encodeIfPresent(freeTrialEndsOn, forKey: "free_trial_ends_on")
        try values.encodeIfPresent(updatedAt, forKey: "updated_at")
        try values.encode(account, forKey: "account")
        try values.encode(plan, forKey: "plan")
    }
}
