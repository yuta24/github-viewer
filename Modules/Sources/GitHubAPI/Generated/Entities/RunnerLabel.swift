// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Self hosted runner label
///
/// A label for a self hosted runner
public struct RunnerLabel: Codable, Identifiable {
    /// Unique identifier of the label.
    public var id: Int?
    /// Name of the label.
    public var name: String
    /// The type of label. Read-only labels are applied automatically when the runner is configured.
    public var type: `Type`?

    /// The type of label. Read-only labels are applied automatically when the runner is configured.
    public enum `Type`: String, Codable, CaseIterable {
        case readOnly = "read-only"
        case custom
    }

    public init(id: Int? = nil, name: String, type: `Type`? = nil) {
        self.id = id
        self.name = name
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(type, forKey: "type")
    }
}
