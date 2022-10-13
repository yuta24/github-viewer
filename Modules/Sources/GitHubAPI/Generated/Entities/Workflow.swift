// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A GitHub Actions workflow
public struct Workflow: Codable, Identifiable {
    public var id: Int
    /// Example: "MDg6V29ya2Zsb3cxMg=="
    public var nodeID: String
    /// Example: "CI"
    public var name: String
    /// Example: "ruby.yaml"
    public var path: String
    /// Example: "active"
    public var state: State
    /// Example: "2019-12-06T14:20:20.000Z"
    public var createdAt: Date
    /// Example: "2019-12-06T14:20:20.000Z"
    public var updatedAt: Date
    /// Example: "https://api.github.com/repos/actions/setup-ruby/workflows/5"
    public var url: String
    /// Example: "https://github.com/actions/setup-ruby/blob/master/.github/workflows/ruby.yaml"
    public var htmlURL: String
    /// Example: "https://github.com/actions/setup-ruby/workflows/CI/badge.svg"
    public var badgeURL: String
    /// Example: "2019-12-06T14:20:20.000Z"
    public var deletedAt: Date?

    /// Example: "active"
    public enum State: String, Codable, CaseIterable {
        case active
        case deleted
        case disabledFork = "disabled_fork"
        case disabledInactivity = "disabled_inactivity"
        case disabledManually = "disabled_manually"
    }

    public init(id: Int, nodeID: String, name: String, path: String, state: State, createdAt: Date, updatedAt: Date, url: String, htmlURL: String, badgeURL: String, deletedAt: Date? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.path = path
        self.state = state
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.url = url
        self.htmlURL = htmlURL
        self.badgeURL = badgeURL
        self.deletedAt = deletedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.name = try values.decode(String.self, forKey: "name")
        self.path = try values.decode(String.self, forKey: "path")
        self.state = try values.decode(State.self, forKey: "state")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.url = try values.decode(String.self, forKey: "url")
        self.htmlURL = try values.decode(String.self, forKey: "html_url")
        self.badgeURL = try values.decode(String.self, forKey: "badge_url")
        self.deletedAt = try values.decodeIfPresent(Date.self, forKey: "deleted_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(name, forKey: "name")
        try values.encode(path, forKey: "path")
        try values.encode(state, forKey: "state")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(badgeURL, forKey: "badge_url")
        try values.encodeIfPresent(deletedAt, forKey: "deleted_at")
    }
}
