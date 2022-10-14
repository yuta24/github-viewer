// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActionsOrganizationPermissions: Codable {
    /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions.
    public var enabledRepositories: EnabledRepositories
    /// The API URL to use to get or set the selected repositories that are allowed to run GitHub Actions, when `enabled_repositories` is set to `selected`.
    public var selectedRepositoriesURL: String?
    /// The permissions policy that controls the actions and reusable workflows that are allowed to run.
    public var allowedActions: AllowedActions?
    /// The API URL to use to get or set the actions and reusable workflows that are allowed to run, when `allowed_actions` is set to `selected`.
    public var selectedActionsURL: String?

    public init(enabledRepositories: EnabledRepositories, selectedRepositoriesURL: String? = nil, allowedActions: AllowedActions? = nil, selectedActionsURL: String? = nil) {
        self.enabledRepositories = enabledRepositories
        self.selectedRepositoriesURL = selectedRepositoriesURL
        self.allowedActions = allowedActions
        self.selectedActionsURL = selectedActionsURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.enabledRepositories = try values.decode(EnabledRepositories.self, forKey: "enabled_repositories")
        self.selectedRepositoriesURL = try values.decodeIfPresent(String.self, forKey: "selected_repositories_url")
        self.allowedActions = try values.decodeIfPresent(AllowedActions.self, forKey: "allowed_actions")
        self.selectedActionsURL = try values.decodeIfPresent(String.self, forKey: "selected_actions_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(enabledRepositories, forKey: "enabled_repositories")
        try values.encodeIfPresent(selectedRepositoriesURL, forKey: "selected_repositories_url")
        try values.encodeIfPresent(allowedActions, forKey: "allowed_actions")
        try values.encodeIfPresent(selectedActionsURL, forKey: "selected_actions_url")
    }
}