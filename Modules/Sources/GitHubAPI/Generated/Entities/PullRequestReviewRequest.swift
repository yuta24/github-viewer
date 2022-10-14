// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PullRequestReviewRequest: Codable {
    public var users: [SimpleUser]
    public var teams: [Team]

    public init(users: [SimpleUser], teams: [Team]) {
        self.users = users
        self.teams = teams
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.users = try values.decode([SimpleUser].self, forKey: "users")
        self.teams = try values.decode([Team].self, forKey: "teams")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(users, forKey: "users")
        try values.encode(teams, forKey: "teams")
    }
}