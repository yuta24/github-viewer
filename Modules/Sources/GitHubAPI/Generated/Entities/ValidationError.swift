// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ValidationError: Codable {
    public var message: String
    public var documentationURL: String
    public var errors: [Error]?

    public struct Error: Codable {
        public var resource: String?
        public var field: String?
        public var message: String?
        public var code: String
        public var index: Int?
        public var value: Value?

        public enum Value: Codable {
            case string(String)
            case int(Int)
            case strings([String])

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                if let value = try? container.decode(String.self) {
                    self = .string(value)
                } else if let value = try? container.decode(Int.self) {
                    self = .int(value)
                } else if let value = try? container.decode([String].self) {
                    self = .strings(value)
                } else {
                    throw DecodingError.dataCorruptedError(
                        in: container,
                        debugDescription: "Data could not be decoded as any of the expected types (String, Int, [String])."
                    )
                }
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .string(let value): try container.encode(value)
                case .int(let value): try container.encode(value)
                case .strings(let value): try container.encode(value)
                }
            }
        }

        public init(resource: String? = nil, field: String? = nil, message: String? = nil, code: String, index: Int? = nil, value: Value? = nil) {
            self.resource = resource
            self.field = field
            self.message = message
            self.code = code
            self.index = index
            self.value = value
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.resource = try values.decodeIfPresent(String.self, forKey: "resource")
            self.field = try values.decodeIfPresent(String.self, forKey: "field")
            self.message = try values.decodeIfPresent(String.self, forKey: "message")
            self.code = try values.decode(String.self, forKey: "code")
            self.index = try values.decodeIfPresent(Int.self, forKey: "index")
            self.value = try values.decodeIfPresent(Value.self, forKey: "value")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(resource, forKey: "resource")
            try values.encodeIfPresent(field, forKey: "field")
            try values.encodeIfPresent(message, forKey: "message")
            try values.encode(code, forKey: "code")
            try values.encodeIfPresent(index, forKey: "index")
            try values.encodeIfPresent(value, forKey: "value")
        }
    }

    public init(message: String, documentationURL: String, errors: [Error]? = nil) {
        self.message = message
        self.documentationURL = documentationURL
        self.errors = errors
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.message = try values.decode(String.self, forKey: "message")
        self.documentationURL = try values.decode(String.self, forKey: "documentation_url")
        self.errors = try values.decodeIfPresent([Error].self, forKey: "errors")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(message, forKey: "message")
        try values.encode(documentationURL, forKey: "documentation_url")
        try values.encodeIfPresent(errors, forKey: "errors")
    }
}