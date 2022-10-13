// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Details of a deployment branch policy.
public struct DeploymentBranchPolicy: Codable, Identifiable {
    /// The unique identifier of the branch policy.
    ///
    /// Example: 361471
    public var id: Int?
    /// Example: "MDE2OkdhdGVCcmFuY2hQb2xpY3kzNjE0NzE="
    public var nodeID: String?
    /// The name pattern that branches must match in order to deploy to the environment.
    ///
    /// Example: "release/*"
    public var name: String?

    public init(id: Int? = nil, nodeID: String? = nil, name: String? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.nodeID = try values.decodeIfPresent(String.self, forKey: "node_id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(nodeID, forKey: "node_id")
        try values.encodeIfPresent(name, forKey: "name")
    }
}
