// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StarredRepository: Codable {
    public var starredAt: Date
    /// Repository
    ///
    /// A git repository
    public var repo: Repository

    public init(starredAt: Date, repo: Repository) {
        self.starredAt = starredAt
        self.repo = repo
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.starredAt = try values.decode(Date.self, forKey: "starred_at")
        self.repo = try values.decode(Repository.self, forKey: "repo")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(starredAt, forKey: "starred_at")
        try values.encode(repo, forKey: "repo")
    }
}