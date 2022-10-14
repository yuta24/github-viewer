// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActionsCacheUsageOrgEnterprise: Codable {
    /// The count of active caches across all repositories of an enterprise or an organization.
    public var totalActiveCachesCount: Int
    /// The total size in bytes of all active cache items across all repositories of an enterprise or an organization.
    public var totalActiveCachesSizeInBytes: Int

    public init(totalActiveCachesCount: Int, totalActiveCachesSizeInBytes: Int) {
        self.totalActiveCachesCount = totalActiveCachesCount
        self.totalActiveCachesSizeInBytes = totalActiveCachesSizeInBytes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.totalActiveCachesCount = try values.decode(Int.self, forKey: "total_active_caches_count")
        self.totalActiveCachesSizeInBytes = try values.decode(Int.self, forKey: "total_active_caches_size_in_bytes")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(totalActiveCachesCount, forKey: "total_active_caches_count")
        try values.encode(totalActiveCachesSizeInBytes, forKey: "total_active_caches_size_in_bytes")
    }
}