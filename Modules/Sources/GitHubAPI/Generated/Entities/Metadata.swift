// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Metadatum: Codable {
    public var string: String?
    public var double: Double?
    public var isBool: Bool?

    public init(string: String? = nil, double: Double? = nil, isBool: Bool? = nil) {
        self.string = string
        self.double = double
        self.isBool = isBool
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.string = try? container.decode(String.self)
        self.double = try? container.decode(Double.self)
        self.isBool = try? container.decode(Bool.self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        if let value = string { try container.encode(value) }
        if let value = double { try container.encode(value) }
        if let value = isBool { try container.encode(value) }
    }
}