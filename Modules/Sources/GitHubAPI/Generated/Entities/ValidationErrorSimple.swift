// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ValidationErrorSimple: Codable {
    public var message: String
    public var documentationURL: String
    public var errors: [String]?

    public init(message: String, documentationURL: String, errors: [String]? = nil) {
        self.message = message
        self.documentationURL = documentationURL
        self.errors = errors
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.message = try values.decode(String.self, forKey: "message")
        self.documentationURL = try values.decode(String.self, forKey: "documentation_url")
        self.errors = try values.decodeIfPresent([String].self, forKey: "errors")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(message, forKey: "message")
        try values.encode(documentationURL, forKey: "documentation_url")
        try values.encodeIfPresent(errors, forKey: "errors")
    }
}
