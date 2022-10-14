// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Custom repository roles created by organization administrators
public struct OrganizationCustomRepositoryRole: Codable, Identifiable {
    /// The unique identifier of the custom role.
    public var id: Int
    /// The name of the custom role.
    public var name: String
    /// A short description about who this role is for or what permissions it grants.
    public var description: String?
    /// The system role from which this role inherits permissions.
    public var baseRole: BaseRole?
    /// A list of additional permissions included in this role.
    public var permissions: [String]?
    /// Simple User
    public var organization: SimpleUser?
    public var createdAt: Date?
    public var updatedAt: Date?

    /// The system role from which this role inherits permissions.
    public enum BaseRole: String, Codable, CaseIterable {
        case read
        case triage
        case write
        case maintain
    }

    public init(id: Int, name: String, description: String? = nil, baseRole: BaseRole? = nil, permissions: [String]? = nil, organization: SimpleUser? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.baseRole = baseRole
        self.permissions = permissions
        self.organization = organization
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.baseRole = try values.decodeIfPresent(BaseRole.self, forKey: "base_role")
        self.permissions = try values.decodeIfPresent([String].self, forKey: "permissions")
        self.organization = try values.decodeIfPresent(SimpleUser.self, forKey: "organization")
        self.createdAt = try values.decodeIfPresent(Date.self, forKey: "created_at")
        self.updatedAt = try values.decodeIfPresent(Date.self, forKey: "updated_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(baseRole, forKey: "base_role")
        try values.encodeIfPresent(permissions, forKey: "permissions")
        try values.encodeIfPresent(organization, forKey: "organization")
        try values.encodeIfPresent(createdAt, forKey: "created_at")
        try values.encodeIfPresent(updatedAt, forKey: "updated_at")
    }
}