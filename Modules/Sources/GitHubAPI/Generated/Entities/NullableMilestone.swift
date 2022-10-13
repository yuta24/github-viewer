// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Milestone
///
/// A collection of related issues and pull requests.
public struct NullableMilestone: Codable, Identifiable {
    /// Example: "https://api.github.com/repos/octocat/Hello-World/milestones/1"
    public var url: URL
    /// Example: "https://github.com/octocat/Hello-World/milestones/v1.0"
    public var htmlURL: URL
    /// Example: "https://api.github.com/repos/octocat/Hello-World/milestones/1/labels"
    public var labelsURL: URL
    /// Example: 1002604
    public var id: Int
    /// Example: "MDk6TWlsZXN0b25lMTAwMjYwNA=="
    public var nodeID: String
    /// The number of the milestone.
    ///
    /// Example: 42
    public var number: Int
    /// The state of the milestone.
    ///
    /// Example: "open"
    public var state: State
    /// The title of the milestone.
    ///
    /// Example: "v1.0"
    public var title: String
    /// Example: "Tracking milestone for version 1.0"
    public var description: String?
    /// Simple User
    public var creator: NullableSimpleUser?
    public var openIssues: Int
    public var closedIssues: Int
    /// Example: "2011-04-10T20:09:31Z"
    public var createdAt: Date
    /// Example: "2014-03-03T18:58:10Z"
    public var updatedAt: Date
    /// Example: "2013-02-12T13:22:01Z"
    public var closedAt: Date?
    /// Example: "2012-10-09T23:39:01Z"
    public var dueOn: Date?

    /// The state of the milestone.
    ///
    /// Example: "open"
    public enum State: String, Codable, CaseIterable {
        case `open`
        case closed
    }

    public init(url: URL, htmlURL: URL, labelsURL: URL, id: Int, nodeID: String, number: Int, state: State, title: String, description: String? = nil, creator: NullableSimpleUser? = nil, openIssues: Int, closedIssues: Int, createdAt: Date, updatedAt: Date, closedAt: Date? = nil, dueOn: Date? = nil) {
        self.url = url
        self.htmlURL = htmlURL
        self.labelsURL = labelsURL
        self.id = id
        self.nodeID = nodeID
        self.number = number
        self.state = state
        self.title = title
        self.description = description
        self.creator = creator
        self.openIssues = openIssues
        self.closedIssues = closedIssues
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.closedAt = closedAt
        self.dueOn = dueOn
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(URL.self, forKey: "url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.labelsURL = try values.decode(URL.self, forKey: "labels_url")
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.number = try values.decode(Int.self, forKey: "number")
        self.state = try values.decode(State.self, forKey: "state")
        self.title = try values.decode(String.self, forKey: "title")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.creator = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "creator")
        self.openIssues = try values.decode(Int.self, forKey: "open_issues")
        self.closedIssues = try values.decode(Int.self, forKey: "closed_issues")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.closedAt = try values.decodeIfPresent(Date.self, forKey: "closed_at")
        self.dueOn = try values.decodeIfPresent(Date.self, forKey: "due_on")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(labelsURL, forKey: "labels_url")
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(number, forKey: "number")
        try values.encode(state, forKey: "state")
        try values.encode(title, forKey: "title")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(creator, forKey: "creator")
        try values.encode(openIssues, forKey: "open_issues")
        try values.encode(closedIssues, forKey: "closed_issues")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encodeIfPresent(closedAt, forKey: "closed_at")
        try values.encodeIfPresent(dueOn, forKey: "due_on")
    }
}
