// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// CodeQL Database
///
/// A CodeQL database.
public struct CodeScanningCodeqlDatabase: Codable, Identifiable {
    /// The ID of the CodeQL database.
    public var id: Int
    /// The name of the CodeQL database.
    public var name: String
    /// The language of the CodeQL database.
    public var language: String
    /// Simple User
    public var uploader: SimpleUser
    /// The MIME type of the CodeQL database file.
    public var contentType: String
    /// The size of the CodeQL database file in bytes.
    public var size: Int
    /// The date and time at which the CodeQL database was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
    public var createdAt: Date
    /// The date and time at which the CodeQL database was last updated, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
    public var updatedAt: Date
    /// The URL at which to download the CodeQL database. The `Accept` header must be set to the value of the `content_type` property.
    public var url: URL

    public init(id: Int, name: String, language: String, uploader: SimpleUser, contentType: String, size: Int, createdAt: Date, updatedAt: Date, url: URL) {
        self.id = id
        self.name = name
        self.language = language
        self.uploader = uploader
        self.contentType = contentType
        self.size = size
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.language = try values.decode(String.self, forKey: "language")
        self.uploader = try values.decode(SimpleUser.self, forKey: "uploader")
        self.contentType = try values.decode(String.self, forKey: "content_type")
        self.size = try values.decode(Int.self, forKey: "size")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.url = try values.decode(URL.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encode(language, forKey: "language")
        try values.encode(uploader, forKey: "uploader")
        try values.encode(contentType, forKey: "content_type")
        try values.encode(size, forKey: "size")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(url, forKey: "url")
    }
}
