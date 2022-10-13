// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DeploymentBranchPolicyNamePattern: Codable {
    /// The name pattern that branches must match in order to deploy to the environment.
    /// 
    /// Wildcard characters will not match `/`. For example, to match branches that begin with `release/` and contain an additional single slash, use `release/*/*`.
    /// For more information about pattern matching syntax, see the [Ruby File.fnmatch documentation](https://ruby-doc.org/core-2.5.1/File.html#method-c-fnmatch).
    ///
    /// Example: "release/*"
    public var name: String

    public init(name: String) {
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
    }
}
