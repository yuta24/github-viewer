// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Codespaces Secret
///
/// Secrets for a GitHub Codespace.
public struct CodespacesOrgSecret: Codable {
    /// The name of the secret
    ///
    /// Example: "SECRET_NAME"
    public var name: String
    /// The date and time at which the secret was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
    public var createdAt: Date
    /// The date and time at which the secret was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
    public var updatedAt: Date
    /// The type of repositories in the organization that the secret is visible to
    public var visibility: Visibility
    /// The API URL at which the list of repositories this secret is visible to can be retrieved
    ///
    /// Example: "https://api.github.com/orgs/ORGANIZATION/codespaces/secrets/SECRET_NAME/repositories"
    public var selectedRepositoriesURL: URL?

    /// The type of repositories in the organization that the secret is visible to
    public enum Visibility: String, Codable, CaseIterable {
        case all
        case `private`
        case selected
    }

    public init(name: String, createdAt: Date, updatedAt: Date, visibility: Visibility, selectedRepositoriesURL: URL? = nil) {
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.visibility = visibility
        self.selectedRepositoriesURL = selectedRepositoriesURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.visibility = try values.decode(Visibility.self, forKey: "visibility")
        self.selectedRepositoriesURL = try values.decodeIfPresent(URL.self, forKey: "selected_repositories_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(visibility, forKey: "visibility")
        try values.encodeIfPresent(selectedRepositoriesURL, forKey: "selected_repositories_url")
    }
}
