// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Community Health File
public struct NullableCommunityHealthFile: Codable {
    public var url: URL
    public var htmlURL: URL

    public init(url: URL, htmlURL: URL) {
        self.url = url
        self.htmlURL = htmlURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(URL.self, forKey: "url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
    }
}
