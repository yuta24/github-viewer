// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GistHistory: Codable {
    /// Simple User
    public var user: NullableSimpleUser?
    public var version: String?
    public var committedAt: Date?
    public var changeStatus: ChangeStatus?
    public var url: URL?

    public struct ChangeStatus: Codable {
        public var total: Int?
        public var additions: Int?
        public var deletions: Int?

        public init(total: Int? = nil, additions: Int? = nil, deletions: Int? = nil) {
            self.total = total
            self.additions = additions
            self.deletions = deletions
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.total = try values.decodeIfPresent(Int.self, forKey: "total")
            self.additions = try values.decodeIfPresent(Int.self, forKey: "additions")
            self.deletions = try values.decodeIfPresent(Int.self, forKey: "deletions")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(total, forKey: "total")
            try values.encodeIfPresent(additions, forKey: "additions")
            try values.encodeIfPresent(deletions, forKey: "deletions")
        }
    }

    public init(user: NullableSimpleUser? = nil, version: String? = nil, committedAt: Date? = nil, changeStatus: ChangeStatus? = nil, url: URL? = nil) {
        self.user = user
        self.version = version
        self.committedAt = committedAt
        self.changeStatus = changeStatus
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.user = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "user")
        self.version = try values.decodeIfPresent(String.self, forKey: "version")
        self.committedAt = try values.decodeIfPresent(Date.self, forKey: "committed_at")
        self.changeStatus = try values.decodeIfPresent(ChangeStatus.self, forKey: "change_status")
        self.url = try values.decodeIfPresent(URL.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(user, forKey: "user")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(committedAt, forKey: "committed_at")
        try values.encodeIfPresent(changeStatus, forKey: "change_status")
        try values.encodeIfPresent(url, forKey: "url")
    }
}