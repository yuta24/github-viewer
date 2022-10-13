// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A team's access to a project.
public struct TeamProject: Codable, Identifiable {
    public var ownerURL: String
    public var url: String
    public var htmlURL: String
    public var columnsURL: String
    public var id: Int
    public var nodeID: String
    public var name: String
    public var body: String?
    public var number: Int
    public var state: String
    /// Simple User
    public var creator: SimpleUser
    public var createdAt: String
    public var updatedAt: String
    /// The organization permission for this project. Only present when owner is an organization.
    public var organizationPermission: String?
    /// Whether the project is private or not. Only present when owner is an organization.
    public var isPrivate: Bool?
    public var permissions: Permissions

    public struct Permissions: Codable {
        public var isRead: Bool
        public var isWrite: Bool
        public var isAdmin: Bool

        public init(isRead: Bool, isWrite: Bool, isAdmin: Bool) {
            self.isRead = isRead
            self.isWrite = isWrite
            self.isAdmin = isAdmin
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.isRead = try values.decode(Bool.self, forKey: "read")
            self.isWrite = try values.decode(Bool.self, forKey: "write")
            self.isAdmin = try values.decode(Bool.self, forKey: "admin")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(isRead, forKey: "read")
            try values.encode(isWrite, forKey: "write")
            try values.encode(isAdmin, forKey: "admin")
        }
    }

    public init(ownerURL: String, url: String, htmlURL: String, columnsURL: String, id: Int, nodeID: String, name: String, body: String? = nil, number: Int, state: String, creator: SimpleUser, createdAt: String, updatedAt: String, organizationPermission: String? = nil, isPrivate: Bool? = nil, permissions: Permissions) {
        self.ownerURL = ownerURL
        self.url = url
        self.htmlURL = htmlURL
        self.columnsURL = columnsURL
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.body = body
        self.number = number
        self.state = state
        self.creator = creator
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.organizationPermission = organizationPermission
        self.isPrivate = isPrivate
        self.permissions = permissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.ownerURL = try values.decode(String.self, forKey: "owner_url")
        self.url = try values.decode(String.self, forKey: "url")
        self.htmlURL = try values.decode(String.self, forKey: "html_url")
        self.columnsURL = try values.decode(String.self, forKey: "columns_url")
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.name = try values.decode(String.self, forKey: "name")
        self.body = try values.decodeIfPresent(String.self, forKey: "body")
        self.number = try values.decode(Int.self, forKey: "number")
        self.state = try values.decode(String.self, forKey: "state")
        self.creator = try values.decode(SimpleUser.self, forKey: "creator")
        self.createdAt = try values.decode(String.self, forKey: "created_at")
        self.updatedAt = try values.decode(String.self, forKey: "updated_at")
        self.organizationPermission = try values.decodeIfPresent(String.self, forKey: "organization_permission")
        self.isPrivate = try values.decodeIfPresent(Bool.self, forKey: "private")
        self.permissions = try values.decode(Permissions.self, forKey: "permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(ownerURL, forKey: "owner_url")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(columnsURL, forKey: "columns_url")
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encode(number, forKey: "number")
        try values.encode(state, forKey: "state")
        try values.encode(creator, forKey: "creator")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encodeIfPresent(organizationPermission, forKey: "organization_permission")
        try values.encodeIfPresent(isPrivate, forKey: "private")
        try values.encode(permissions, forKey: "permissions")
    }
}
