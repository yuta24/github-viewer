// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Color-coded labels help you categorize and filter your issues (just like labels in Gmail).
public struct Label: Codable, Identifiable {
    /// Example: 208045946
    public var id: Int64
    /// Example: "MDU6TGFiZWwyMDgwNDU5NDY="
    public var nodeID: String
    /// URL for the label
    ///
    /// Example: "https://api.github.com/repositories/42/labels/bug"
    public var url: URL
    /// The name of the label.
    ///
    /// Example: "bug"
    public var name: String
    /// Example: "Something isn't working"
    public var description: String?
    /// 6-character hex code, without the leading #, identifying the color
    ///
    /// Example: "FFFFFF"
    public var color: String
    /// Example: true
    public var isDefault: Bool

    public init(id: Int64, nodeID: String, url: URL, name: String, description: String? = nil, color: String, isDefault: Bool) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.name = name
        self.description = description
        self.color = color
        self.isDefault = isDefault
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int64.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.url = try values.decode(URL.self, forKey: "url")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.color = try values.decode(String.self, forKey: "color")
        self.isDefault = try values.decode(Bool.self, forKey: "default")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(url, forKey: "url")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(color, forKey: "color")
        try values.encode(isDefault, forKey: "default")
    }
}