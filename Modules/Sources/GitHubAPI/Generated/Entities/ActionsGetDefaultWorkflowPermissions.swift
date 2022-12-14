// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActionsGetDefaultWorkflowPermissions: Codable {
    /// The default workflow permissions granted to the GITHUB_TOKEN when running workflows.
    public var defaultWorkflowPermissions: ActionsDefaultWorkflowPermissions
    /// Whether GitHub Actions can approve pull requests. Enabling this can be a security risk.
    public var canApprovePullRequestReviews: Bool

    public init(defaultWorkflowPermissions: ActionsDefaultWorkflowPermissions, canApprovePullRequestReviews: Bool) {
        self.defaultWorkflowPermissions = defaultWorkflowPermissions
        self.canApprovePullRequestReviews = canApprovePullRequestReviews
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.defaultWorkflowPermissions = try values.decode(ActionsDefaultWorkflowPermissions.self, forKey: "default_workflow_permissions")
        self.canApprovePullRequestReviews = try values.decode(Bool.self, forKey: "can_approve_pull_request_reviews")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(defaultWorkflowPermissions, forKey: "default_workflow_permissions")
        try values.encode(canApprovePullRequestReviews, forKey: "can_approve_pull_request_reviews")
    }
}
