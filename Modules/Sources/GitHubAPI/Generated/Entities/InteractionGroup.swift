// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect.
///
/// Example: "collaborators_only"
public enum InteractionGroup: String, Codable, CaseIterable {
    case existingUsers = "existing_users"
    case contributorsOnly = "contributors_only"
    case collaboratorsOnly = "collaborators_only"
}