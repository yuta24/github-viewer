// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CommitComment: Codable, Identifiable {
    public var htmlURL: URL
    public var url: URL
    public var id: Int
    public var nodeID: String
    public var body: String
    public var path: String?
    public var position: Int?
    public var line: Int?
    public var commitID: String
    /// Simple User
    public var user: NullableSimpleUser?
    public var createdAt: Date
    public var updatedAt: Date
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation
    /// Reaction Rollup
    public var reactions: ReactionRollup?

    public init(htmlURL: URL, url: URL, id: Int, nodeID: String, body: String, path: String? = nil, position: Int? = nil, line: Int? = nil, commitID: String, user: NullableSimpleUser? = nil, createdAt: Date, updatedAt: Date, authorAssociation: AuthorAssociation, reactions: ReactionRollup? = nil) {
        self.htmlURL = htmlURL
        self.url = url
        self.id = id
        self.nodeID = nodeID
        self.body = body
        self.path = path
        self.position = position
        self.line = line
        self.commitID = commitID
        self.user = user
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.authorAssociation = authorAssociation
        self.reactions = reactions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.url = try values.decode(URL.self, forKey: "url")
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.body = try values.decode(String.self, forKey: "body")
        self.path = try values.decodeIfPresent(String.self, forKey: "path")
        self.position = try values.decodeIfPresent(Int.self, forKey: "position")
        self.line = try values.decodeIfPresent(Int.self, forKey: "line")
        self.commitID = try values.decode(String.self, forKey: "commit_id")
        self.user = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "user")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.authorAssociation = try values.decode(AuthorAssociation.self, forKey: "author_association")
        self.reactions = try values.decodeIfPresent(ReactionRollup.self, forKey: "reactions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(url, forKey: "url")
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(body, forKey: "body")
        try values.encodeIfPresent(path, forKey: "path")
        try values.encodeIfPresent(position, forKey: "position")
        try values.encodeIfPresent(line, forKey: "line")
        try values.encode(commitID, forKey: "commit_id")
        try values.encodeIfPresent(user, forKey: "user")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(authorAssociation, forKey: "author_association")
        try values.encodeIfPresent(reactions, forKey: "reactions")
    }
}