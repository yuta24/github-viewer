// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PullRequestMergeResult: Codable {
    public var sha: String
    public var isMerged: Bool
    public var message: String

    public init(sha: String, isMerged: Bool, message: String) {
        self.sha = sha
        self.isMerged = isMerged
        self.message = message
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.sha = try values.decode(String.self, forKey: "sha")
        self.isMerged = try values.decode(Bool.self, forKey: "merged")
        self.message = try values.decode(String.self, forKey: "message")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(sha, forKey: "sha")
        try values.encode(isMerged, forKey: "merged")
        try values.encode(message, forKey: "message")
    }
}
