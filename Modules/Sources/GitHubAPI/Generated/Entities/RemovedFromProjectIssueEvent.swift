// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RemovedFromProjectIssueEvent: Codable, Identifiable {
    public var id: Int
    public var nodeID: String
    public var url: String
    /// Simple User
    public var actor: SimpleUser
    public var event: String
    public var commitID: String?
    public var commitURL: String?
    public var createdAt: String
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: NullableIntegration?
    public var projectCard: ProjectCard?

    public struct ProjectCard: Codable, Identifiable {
        public var id: Int
        public var url: URL
        public var projectID: Int
        public var projectURL: URL
        public var columnName: String
        public var previousColumnName: String?

        public init(id: Int, url: URL, projectID: Int, projectURL: URL, columnName: String, previousColumnName: String? = nil) {
            self.id = id
            self.url = url
            self.projectID = projectID
            self.projectURL = projectURL
            self.columnName = columnName
            self.previousColumnName = previousColumnName
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.id = try values.decode(Int.self, forKey: "id")
            self.url = try values.decode(URL.self, forKey: "url")
            self.projectID = try values.decode(Int.self, forKey: "project_id")
            self.projectURL = try values.decode(URL.self, forKey: "project_url")
            self.columnName = try values.decode(String.self, forKey: "column_name")
            self.previousColumnName = try values.decodeIfPresent(String.self, forKey: "previous_column_name")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(id, forKey: "id")
            try values.encode(url, forKey: "url")
            try values.encode(projectID, forKey: "project_id")
            try values.encode(projectURL, forKey: "project_url")
            try values.encode(columnName, forKey: "column_name")
            try values.encodeIfPresent(previousColumnName, forKey: "previous_column_name")
        }
    }

    public init(id: Int, nodeID: String, url: String, actor: SimpleUser, event: String, commitID: String? = nil, commitURL: String? = nil, createdAt: String, performedViaGithubApp: NullableIntegration? = nil, projectCard: ProjectCard? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.actor = actor
        self.event = event
        self.commitID = commitID
        self.commitURL = commitURL
        self.createdAt = createdAt
        self.performedViaGithubApp = performedViaGithubApp
        self.projectCard = projectCard
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.url = try values.decode(String.self, forKey: "url")
        self.actor = try values.decode(SimpleUser.self, forKey: "actor")
        self.event = try values.decode(String.self, forKey: "event")
        self.commitID = try values.decodeIfPresent(String.self, forKey: "commit_id")
        self.commitURL = try values.decodeIfPresent(String.self, forKey: "commit_url")
        self.createdAt = try values.decode(String.self, forKey: "created_at")
        self.performedViaGithubApp = try values.decodeIfPresent(NullableIntegration.self, forKey: "performed_via_github_app")
        self.projectCard = try values.decodeIfPresent(ProjectCard.self, forKey: "project_card")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(url, forKey: "url")
        try values.encode(actor, forKey: "actor")
        try values.encode(event, forKey: "event")
        try values.encodeIfPresent(commitID, forKey: "commit_id")
        try values.encodeIfPresent(commitURL, forKey: "commit_url")
        try values.encode(createdAt, forKey: "created_at")
        try values.encodeIfPresent(performedViaGithubApp, forKey: "performed_via_github_app")
        try values.encodeIfPresent(projectCard, forKey: "project_card")
    }
}