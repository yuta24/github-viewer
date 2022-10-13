// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Installation: Codable, Identifiable {
    /// The ID of the installation.
    public var id: Int
    public var account: Account?
    /// Describe whether all repositories have been selected or there's a selection involved
    public var repositorySelection: RepositorySelection
    /// Example: "https://api.github.com/installations/1/access_tokens"
    public var accessTokensURL: URL
    /// Example: "https://api.github.com/installation/repositories"
    public var repositoriesURL: URL
    /// Example: "https://github.com/organizations/github/settings/installations/1"
    public var htmlURL: URL
    public var appID: Int
    /// The ID of the user or organization this token is being scoped to.
    public var targetID: Int
    /// Example: "Organization"
    public var targetType: String
    /// App Permissions
    ///
    /// The permissions granted to the user-to-server access token.
    ///
    /// Example:
    ///
    /// {
    ///   "contents" : "read",
    ///   "deployments" : "write",
    ///   "issues" : "read",
    ///   "single_file" : "read"
    /// }
    public var permissions: AppPermissions
    public var events: [String]
    public var createdAt: Date
    public var updatedAt: Date
    /// Example: "config.yaml"
    public var singleFileName: String?
    /// Example: true
    public var hasMultipleSingleFiles: Bool?
    /// Example: ["config.yml", ".github/issue_TEMPLATE.md"]
    public var singleFilePaths: [String]?
    /// Example: "github-actions"
    public var appSlug: String
    /// Simple User
    public var suspendedBy: NullableSimpleUser?
    public var suspendedAt: Date?
    /// Example: "test_13f1e99741e3e004@d7e1eb0bc0a1ba12.com"
    public var contactEmail: String?

    public struct Account: Codable {
        public var simpleUser: SimpleUser?
        /// An enterprise account
        public var enterprise: Enterprise?

        public init(simpleUser: SimpleUser? = nil, enterprise: Enterprise? = nil) {
            self.simpleUser = simpleUser
            self.enterprise = enterprise
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.simpleUser = try? container.decode(SimpleUser.self)
            self.enterprise = try? container.decode(Enterprise.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = simpleUser { try container.encode(value) }
            if let value = enterprise { try container.encode(value) }
        }
    }

    /// Describe whether all repositories have been selected or there's a selection involved
    public enum RepositorySelection: String, Codable, CaseIterable {
        case all
        case selected
    }

    public init(id: Int, account: Account? = nil, repositorySelection: RepositorySelection, accessTokensURL: URL, repositoriesURL: URL, htmlURL: URL, appID: Int, targetID: Int, targetType: String, permissions: AppPermissions, events: [String], createdAt: Date, updatedAt: Date, singleFileName: String? = nil, hasMultipleSingleFiles: Bool? = nil, singleFilePaths: [String]? = nil, appSlug: String, suspendedBy: NullableSimpleUser? = nil, suspendedAt: Date? = nil, contactEmail: String? = nil) {
        self.id = id
        self.account = account
        self.repositorySelection = repositorySelection
        self.accessTokensURL = accessTokensURL
        self.repositoriesURL = repositoriesURL
        self.htmlURL = htmlURL
        self.appID = appID
        self.targetID = targetID
        self.targetType = targetType
        self.permissions = permissions
        self.events = events
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.singleFileName = singleFileName
        self.hasMultipleSingleFiles = hasMultipleSingleFiles
        self.singleFilePaths = singleFilePaths
        self.appSlug = appSlug
        self.suspendedBy = suspendedBy
        self.suspendedAt = suspendedAt
        self.contactEmail = contactEmail
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.account = try values.decodeIfPresent(Account.self, forKey: "account")
        self.repositorySelection = try values.decode(RepositorySelection.self, forKey: "repository_selection")
        self.accessTokensURL = try values.decode(URL.self, forKey: "access_tokens_url")
        self.repositoriesURL = try values.decode(URL.self, forKey: "repositories_url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.appID = try values.decode(Int.self, forKey: "app_id")
        self.targetID = try values.decode(Int.self, forKey: "target_id")
        self.targetType = try values.decode(String.self, forKey: "target_type")
        self.permissions = try values.decode(AppPermissions.self, forKey: "permissions")
        self.events = try values.decode([String].self, forKey: "events")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.singleFileName = try values.decodeIfPresent(String.self, forKey: "single_file_name")
        self.hasMultipleSingleFiles = try values.decodeIfPresent(Bool.self, forKey: "has_multiple_single_files")
        self.singleFilePaths = try values.decodeIfPresent([String].self, forKey: "single_file_paths")
        self.appSlug = try values.decode(String.self, forKey: "app_slug")
        self.suspendedBy = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "suspended_by")
        self.suspendedAt = try values.decodeIfPresent(Date.self, forKey: "suspended_at")
        self.contactEmail = try values.decodeIfPresent(String.self, forKey: "contact_email")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(account, forKey: "account")
        try values.encode(repositorySelection, forKey: "repository_selection")
        try values.encode(accessTokensURL, forKey: "access_tokens_url")
        try values.encode(repositoriesURL, forKey: "repositories_url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(appID, forKey: "app_id")
        try values.encode(targetID, forKey: "target_id")
        try values.encode(targetType, forKey: "target_type")
        try values.encode(permissions, forKey: "permissions")
        try values.encode(events, forKey: "events")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encodeIfPresent(singleFileName, forKey: "single_file_name")
        try values.encodeIfPresent(hasMultipleSingleFiles, forKey: "has_multiple_single_files")
        try values.encodeIfPresent(singleFilePaths, forKey: "single_file_paths")
        try values.encode(appSlug, forKey: "app_slug")
        try values.encodeIfPresent(suspendedBy, forKey: "suspended_by")
        try values.encodeIfPresent(suspendedAt, forKey: "suspended_at")
        try values.encodeIfPresent(contactEmail, forKey: "contact_email")
    }
}
