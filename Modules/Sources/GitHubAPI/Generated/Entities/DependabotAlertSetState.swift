// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Sets the status of the dependabot alert. You must provide `dismissed_reason` when you set the state to `dismissed`.
public enum DependabotAlertSetState: String, Codable, CaseIterable {
    case dismissed
    case `open`
}