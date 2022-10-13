// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A software package
public struct Package: Codable, Identifiable {
    /// Unique identifier of the package.
    public var id: Int
    /// The name of the package.
    ///
    /// Example: "super-linter"
    public var name: String
    /// Example: "docker"
    public var packageType: PackageType
    /// Example: "https://api.github.com/orgs/github/packages/container/super-linter"
    public var url: String
    /// Example: "https://github.com/orgs/github/packages/container/package/super-linter"
    public var htmlURL: String
    /// The number of versions of the package.
    public var versionCount: Int
    /// Example: "private"
    public var visibility: Visibility
    /// Simple User
    public var owner: NullableSimpleUser?
    /// Minimal Repository
    public var repository: NullableMinimalRepository?
    public var createdAt: Date
    public var updatedAt: Date

    /// Example: "docker"
    public enum PackageType: String, Codable, CaseIterable {
        case npm
        case maven
        case rubygems
        case docker
        case nuget
        case container
    }

    /// Example: "private"
    public enum Visibility: String, Codable, CaseIterable {
        case `private`
        case `public`
    }

    public init(id: Int, name: String, packageType: PackageType, url: String, htmlURL: String, versionCount: Int, visibility: Visibility, owner: NullableSimpleUser? = nil, repository: NullableMinimalRepository? = nil, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.name = name
        self.packageType = packageType
        self.url = url
        self.htmlURL = htmlURL
        self.versionCount = versionCount
        self.visibility = visibility
        self.owner = owner
        self.repository = repository
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.packageType = try values.decode(PackageType.self, forKey: "package_type")
        self.url = try values.decode(String.self, forKey: "url")
        self.htmlURL = try values.decode(String.self, forKey: "html_url")
        self.versionCount = try values.decode(Int.self, forKey: "version_count")
        self.visibility = try values.decode(Visibility.self, forKey: "visibility")
        self.owner = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "owner")
        self.repository = try values.decodeIfPresent(NullableMinimalRepository.self, forKey: "repository")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encode(packageType, forKey: "package_type")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(versionCount, forKey: "version_count")
        try values.encode(visibility, forKey: "visibility")
        try values.encodeIfPresent(owner, forKey: "owner")
        try values.encodeIfPresent(repository, forKey: "repository")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
    }
}
