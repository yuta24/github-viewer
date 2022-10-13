// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActionsWorkflowAccessToRepository: Codable {
    /// Defines the level of access that workflows outside of the repository have to actions and reusable workflows within the
    /// repository. `none` means access is only possible from workflows in this repository.
    public var accessLevel: AccessLevel

    /// Defines the level of access that workflows outside of the repository have to actions and reusable workflows within the
    /// repository. `none` means access is only possible from workflows in this repository.
    public enum AccessLevel: String, Codable, CaseIterable {
        case `none`
        case organization
        case enterprise
    }

    public init(accessLevel: AccessLevel) {
        self.accessLevel = accessLevel
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accessLevel = try values.decode(AccessLevel.self, forKey: "access_level")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(accessLevel, forKey: "access_level")
    }
}
