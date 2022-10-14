// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DependabotAlertDependency: Codable {
    /// The details of the vulnerable package.
    public var package: DependabotAlertPackage?
    /// The path to the manifest filename.
    public var manifestPath: String?
    /// The scope of the vulnerable dependency.
    public var scope: DependabotAlertScope?

    public init(package: DependabotAlertPackage? = nil, manifestPath: String? = nil, scope: DependabotAlertScope? = nil) {
        self.package = package
        self.manifestPath = manifestPath
        self.scope = scope
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.package = try values.decodeIfPresent(DependabotAlertPackage.self, forKey: "package")
        self.manifestPath = try values.decodeIfPresent(String.self, forKey: "manifest_path")
        self.scope = try values.decodeIfPresent(DependabotAlertScope.self, forKey: "scope")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(package, forKey: "package")
        try values.encodeIfPresent(manifestPath, forKey: "manifest_path")
        try values.encodeIfPresent(scope, forKey: "scope")
    }
}