// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A workflow referenced/reused by the initial caller workflow
public struct ReferencedWorkflow: Codable {
    public var path: String
    public var sha: String
    public var ref: String?

    public init(path: String, sha: String, ref: String? = nil) {
        self.path = path
        self.sha = sha
        self.ref = ref
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decode(String.self, forKey: "path")
        self.sha = try values.decode(String.self, forKey: "sha")
        self.ref = try values.decodeIfPresent(String.self, forKey: "ref")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(path, forKey: "path")
        try values.encode(sha, forKey: "sha")
        try values.encodeIfPresent(ref, forKey: "ref")
    }
}
