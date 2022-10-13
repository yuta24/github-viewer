// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PackagesBillingUsage: Codable {
    /// Sum of the free and paid storage space (GB) for GitHuub Packages.
    public var totalGigabytesBandwidthUsed: Int
    /// Total paid storage space (GB) for GitHuub Packages.
    public var totalPaidGigabytesBandwidthUsed: Int
    /// Free storage space (GB) for GitHub Packages.
    public var includedGigabytesBandwidth: Int

    public init(totalGigabytesBandwidthUsed: Int, totalPaidGigabytesBandwidthUsed: Int, includedGigabytesBandwidth: Int) {
        self.totalGigabytesBandwidthUsed = totalGigabytesBandwidthUsed
        self.totalPaidGigabytesBandwidthUsed = totalPaidGigabytesBandwidthUsed
        self.includedGigabytesBandwidth = includedGigabytesBandwidth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.totalGigabytesBandwidthUsed = try values.decode(Int.self, forKey: "total_gigabytes_bandwidth_used")
        self.totalPaidGigabytesBandwidthUsed = try values.decode(Int.self, forKey: "total_paid_gigabytes_bandwidth_used")
        self.includedGigabytesBandwidth = try values.decode(Int.self, forKey: "included_gigabytes_bandwidth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(totalGigabytesBandwidthUsed, forKey: "total_gigabytes_bandwidth_used")
        try values.encode(totalPaidGigabytesBandwidthUsed, forKey: "total_paid_gigabytes_bandwidth_used")
        try values.encode(includedGigabytesBandwidth, forKey: "included_gigabytes_bandwidth")
    }
}
