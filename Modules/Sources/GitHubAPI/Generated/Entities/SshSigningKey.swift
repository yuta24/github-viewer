// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A public SSH key used to sign Git commits
public struct SshSigningKey: Codable, Identifiable {
    public var key: String
    public var id: Int
    public var title: String
    public var createdAt: Date

    public init(key: String, id: Int, title: String, createdAt: Date) {
        self.key = key
        self.id = id
        self.title = title
        self.createdAt = createdAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.key = try values.decode(String.self, forKey: "key")
        self.id = try values.decode(Int.self, forKey: "id")
        self.title = try values.decode(String.self, forKey: "title")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(key, forKey: "key")
        try values.encode(id, forKey: "id")
        try values.encode(title, forKey: "title")
        try values.encode(createdAt, forKey: "created_at")
    }
}