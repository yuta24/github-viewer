// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct License: Codable {
    /// Example: "mit"
    public var key: String
    /// Example: "MIT License"
    public var name: String
    /// Example: "MIT"
    public var spdxID: String?
    /// Example: "https://api.github.com/licenses/mit"
    public var url: URL?
    /// Example: "MDc6TGljZW5zZW1pdA=="
    public var nodeID: String
    /// Example: "http://choosealicense.com/licenses/mit/"
    public var htmlURL: URL
    /// Example: "A permissive license that is short and to the point. It lets people do anything with your code with proper attribution and without warranty."
    public var description: String
    /// Example: "Create a text file (typically named LICENSE or LICENSE.txt) in the root of your source code and copy the text of the license into the file. Replace [year] with the current year and [fullname] with the name (or names) of the copyright holders."
    public var implementation: String
    /// Example: ["commercial-use", "modifications", "distribution", "sublicense", "private-use"]
    public var permissions: [String]
    /// Example: ["include-copyright"]
    public var conditions: [String]
    /// Example: ["no-liability"]
    public var limitations: [String]
    /// Example:
    ///
    /// "
    /// 
    /// The MIT License (MIT)
    /// 
    /// Copyright (c) [year] [fullname]
    /// 
    /// Permission is hereby granted, free of charge, to any person obtaining a copy
    /// of this software and associated documentation files (the "Software"), to deal
    /// in the Software without restriction, including without limitation the rights
    /// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    /// copies of the Software, and to permit persons to whom the Software is
    /// furnished to do so, subject to the following conditions:
    /// 
    /// The above copyright notice and this permission notice shall be included in all
    /// copies or substantial portions of the Software.
    /// 
    /// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    /// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    /// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    /// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    /// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    /// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    /// SOFTWARE.
    /// "
    public var body: String
    /// Example: true
    public var isFeatured: Bool

    public init(key: String, name: String, spdxID: String? = nil, url: URL? = nil, nodeID: String, htmlURL: URL, description: String, implementation: String, permissions: [String], conditions: [String], limitations: [String], body: String, isFeatured: Bool) {
        self.key = key
        self.name = name
        self.spdxID = spdxID
        self.url = url
        self.nodeID = nodeID
        self.htmlURL = htmlURL
        self.description = description
        self.implementation = implementation
        self.permissions = permissions
        self.conditions = conditions
        self.limitations = limitations
        self.body = body
        self.isFeatured = isFeatured
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.key = try values.decode(String.self, forKey: "key")
        self.name = try values.decode(String.self, forKey: "name")
        self.spdxID = try values.decodeIfPresent(String.self, forKey: "spdx_id")
        self.url = try values.decodeIfPresent(URL.self, forKey: "url")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.description = try values.decode(String.self, forKey: "description")
        self.implementation = try values.decode(String.self, forKey: "implementation")
        self.permissions = try values.decode([String].self, forKey: "permissions")
        self.conditions = try values.decode([String].self, forKey: "conditions")
        self.limitations = try values.decode([String].self, forKey: "limitations")
        self.body = try values.decode(String.self, forKey: "body")
        self.isFeatured = try values.decode(Bool.self, forKey: "featured")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(key, forKey: "key")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(spdxID, forKey: "spdx_id")
        try values.encodeIfPresent(url, forKey: "url")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(description, forKey: "description")
        try values.encode(implementation, forKey: "implementation")
        try values.encode(permissions, forKey: "permissions")
        try values.encode(conditions, forKey: "conditions")
        try values.encode(limitations, forKey: "limitations")
        try values.encode(body, forKey: "body")
        try values.encode(isFeatured, forKey: "featured")
    }
}
