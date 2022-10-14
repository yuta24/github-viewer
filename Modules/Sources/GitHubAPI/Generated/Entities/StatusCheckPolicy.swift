// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StatusCheckPolicy: Codable {
    /// Example: "https://api.github.com/repos/octocat/Hello-World/branches/master/protection/required_status_checks"
    public var url: URL
    /// Example: true
    public var isStrict: Bool
    /// Example: ["continuous-integration/travis-ci"]
    public var contexts: [String]
    public var checks: [Check]
    /// Example: "https://api.github.com/repos/octocat/Hello-World/branches/master/protection/required_status_checks/contexts"
    public var contextsURL: URL

    public struct Check: Codable {
        /// Example: "continuous-integration/travis-ci"
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

    public init(url: URL, isStrict: Bool, contexts: [String], checks: [Check], contextsURL: URL) {
        self.url = url
        self.isStrict = isStrict
        self.contexts = contexts
        self.checks = checks
        self.contextsURL = contextsURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(URL.self, forKey: "url")
        self.isStrict = try values.decode(Bool.self, forKey: "strict")
        self.contexts = try values.decode([String].self, forKey: "contexts")
        self.checks = try values.decode([Check].self, forKey: "checks")
        self.contextsURL = try values.decode(URL.self, forKey: "contexts_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(isStrict, forKey: "strict")
        try values.encode(contexts, forKey: "contexts")
        try values.encode(checks, forKey: "checks")
        try values.encode(contextsURL, forKey: "contexts_url")
    }
}