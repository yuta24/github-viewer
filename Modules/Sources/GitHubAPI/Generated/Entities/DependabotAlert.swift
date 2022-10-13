// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DependabotAlert: Codable {
    /// The security alert number.
    public var number: Int
    /// State of a Dependabot alert.
    public var state: DependabotAlertState
    public var dependency: DependabotAlertDependency
    /// The details of the security advisory, including summary, description, and severity.
    public var securityAdvisory: DependabotAlertSecurityAdvisory
    /// The details of the vulnerability of a security advisory.
    public var securityVulnerability: DependabotAlertSecurityVulnerability
    /// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var createdAt: Date
    /// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var updatedAt: Date
    /// The REST API URL of the alert resource.
    public var url: URL
    /// The GitHub URL of the alert resource.
    public var htmlURL: URL
    /// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var dismissedAt: Date?
    /// Simple User
    public var dismissedBy: NullableSimpleUser?
    /// **Required when the `state` is `dismissed`.** The reason for dismissing the Dependabot alert.
    public var dismissedReason: DependabotAlertDismissedReason?
    /// An optional comment associated with the alert's dismissal. The maximum size is 280 characters.
    public var dismissedComment: String?
    /// The time that the alert was no longer detected and was considered fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var fixedAt: Date?

    public init(number: Int, state: DependabotAlertState, dependency: DependabotAlertDependency, securityAdvisory: DependabotAlertSecurityAdvisory, securityVulnerability: DependabotAlertSecurityVulnerability, createdAt: Date, updatedAt: Date, url: URL, htmlURL: URL, dismissedAt: Date? = nil, dismissedBy: NullableSimpleUser? = nil, dismissedReason: DependabotAlertDismissedReason? = nil, dismissedComment: String? = nil, fixedAt: Date? = nil) {
        self.number = number
        self.state = state
        self.dependency = dependency
        self.securityAdvisory = securityAdvisory
        self.securityVulnerability = securityVulnerability
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.url = url
        self.htmlURL = htmlURL
        self.dismissedAt = dismissedAt
        self.dismissedBy = dismissedBy
        self.dismissedReason = dismissedReason
        self.dismissedComment = dismissedComment
        self.fixedAt = fixedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.number = try values.decode(Int.self, forKey: "number")
        self.state = try values.decode(DependabotAlertState.self, forKey: "state")
        self.dependency = try values.decode(DependabotAlertDependency.self, forKey: "dependency")
        self.securityAdvisory = try values.decode(DependabotAlertSecurityAdvisory.self, forKey: "security_advisory")
        self.securityVulnerability = try values.decode(DependabotAlertSecurityVulnerability.self, forKey: "security_vulnerability")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.url = try values.decode(URL.self, forKey: "url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.dismissedAt = try values.decodeIfPresent(Date.self, forKey: "dismissed_at")
        self.dismissedBy = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "dismissed_by")
        self.dismissedReason = try values.decodeIfPresent(DependabotAlertDismissedReason.self, forKey: "dismissed_reason")
        self.dismissedComment = try values.decodeIfPresent(String.self, forKey: "dismissed_comment")
        self.fixedAt = try values.decodeIfPresent(Date.self, forKey: "fixed_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(number, forKey: "number")
        try values.encode(state, forKey: "state")
        try values.encode(dependency, forKey: "dependency")
        try values.encode(securityAdvisory, forKey: "security_advisory")
        try values.encode(securityVulnerability, forKey: "security_vulnerability")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encodeIfPresent(dismissedAt, forKey: "dismissed_at")
        try values.encodeIfPresent(dismissedBy, forKey: "dismissed_by")
        try values.encodeIfPresent(dismissedReason, forKey: "dismissed_reason")
        try values.encodeIfPresent(dismissedComment, forKey: "dismissed_comment")
        try values.encodeIfPresent(fixedAt, forKey: "fixed_at")
    }
}
