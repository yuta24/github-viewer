// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ShortBlob: Codable {
    public var url: String
    public var sha: String

    public init(url: String, sha: String) {
        self.url = url
        self.sha = sha
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(String.self, forKey: "url")
        self.sha = try values.decode(String.self, forKey: "sha")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(sha, forKey: "sha")
    }
}
