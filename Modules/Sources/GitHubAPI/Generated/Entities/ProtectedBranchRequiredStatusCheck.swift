// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ProtectedBranchRequiredStatusCheck: Codable {
    public var url: String?
    public var enforcementLevel: String?
    public var contexts: [String]
    public var checks: [Check]
    public var contextsURL: String?
    public var isStrict: Bool?

    public struct Check: Codable {
        public var context: String
        public var appID: Int?

        public init(context: String, appID: Int? = nil) {
            self.context = context
            self.appID = appID
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.context = try values.decode(String.self, forKey: "context")
            self.appID = try values.decodeIfPresent(Int.self, forKey: "app_id")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(context, forKey: "context")
            try values.encodeIfPresent(appID, forKey: "app_id")
        }
    }

    public init(url: String? = nil, enforcementLevel: String? = nil, contexts: [String], checks: [Check], contextsURL: String? = nil, isStrict: Bool? = nil) {
        self.url = url
        self.enforcementLevel = enforcementLevel
        self.contexts = contexts
        self.checks = checks
        self.contextsURL = contextsURL
        self.isStrict = isStrict
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
        self.enforcementLevel = try values.decodeIfPresent(String.self, forKey: "enforcement_level")
        self.contexts = try values.decode([String].self, forKey: "contexts")
        self.checks = try values.decode([Check].self, forKey: "checks")
        self.contextsURL = try values.decodeIfPresent(String.self, forKey: "contexts_url")
        self.isStrict = try values.decodeIfPresent(Bool.self, forKey: "strict")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(enforcementLevel, forKey: "enforcement_level")
        try values.encode(contexts, forKey: "contexts")
        try values.encode(checks, forKey: "checks")
        try values.encodeIfPresent(contextsURL, forKey: "contexts_url")
        try values.encodeIfPresent(isStrict, forKey: "strict")
    }
}