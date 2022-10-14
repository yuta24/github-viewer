// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CodeScanningAlertRule: Codable, Identifiable {
    /// A unique identifier for the rule used to detect the alert.
    public var id: String?
    /// The name of the rule used to detect the alert.
    public var name: String?
    /// The severity of the alert.
    public var severity: Severity?
    /// The security severity of the alert.
    public var securitySeverityLevel: SecuritySeverityLevel?
    /// A short description of the rule used to detect the alert.
    public var description: String?
    /// Description of the rule used to detect the alert.
    public var fullDescription: String?
    /// A set of tags applicable for the rule.
    public var tags: [String]?
    /// Detailed documentation for the rule as GitHub Flavored Markdown.
    public var help: String?
    /// A link to the documentation for the rule used to detect the alert.
    public var helpUri: String?

    /// The severity of the alert.
    public enum Severity: String, Codable, CaseIterable {
        case `none`
        case note
        case warning
        case error
    }

    /// The security severity of the alert.
    public enum SecuritySeverityLevel: String, Codable, CaseIterable {
        case low
        case medium
        case high
        case critical
    }

    public init(id: String? = nil, name: String? = nil, severity: Severity? = nil, securitySeverityLevel: SecuritySeverityLevel? = nil, description: String? = nil, fullDescription: String? = nil, tags: [String]? = nil, help: String? = nil, helpUri: String? = nil) {
        self.id = id
        self.name = name
        self.severity = severity
        self.securitySeverityLevel = securitySeverityLevel
        self.description = description
        self.fullDescription = fullDescription
        self.tags = tags
        self.help = help
        self.helpUri = helpUri
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.severity = try values.decodeIfPresent(Severity.self, forKey: "severity")
        self.securitySeverityLevel = try values.decodeIfPresent(SecuritySeverityLevel.self, forKey: "security_severity_level")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.fullDescription = try values.decodeIfPresent(String.self, forKey: "full_description")
        self.tags = try values.decodeIfPresent([String].self, forKey: "tags")
        self.help = try values.decodeIfPresent(String.self, forKey: "help")
        self.helpUri = try values.decodeIfPresent(String.self, forKey: "help_uri")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(severity, forKey: "severity")
        try values.encodeIfPresent(securitySeverityLevel, forKey: "security_severity_level")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(fullDescription, forKey: "full_description")
        try values.encodeIfPresent(tags, forKey: "tags")
        try values.encodeIfPresent(help, forKey: "help")
        try values.encodeIfPresent(helpUri, forKey: "help_uri")
    }
}