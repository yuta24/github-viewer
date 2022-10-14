// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// GitHub Pages
///
/// The GitHub Pages deployment status.
public struct PageDeployment: Codable {
    /// The URI to monitor GitHub Pages deployment status.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/pages/deployments/4fd754f7e594640989b406850d0bc8f06a121251/status"
    public var statusURL: URL
    /// The URI to the deployed GitHub Pages.
    ///
    /// Example: "hello-world.github.io"
    public var pageURL: URL
    /// The URI to the deployed GitHub Pages preview.
    ///
    /// Example: "monalisa-1231a2312sa32-23sda74.drafts.github.io"
    public var previewURL: URL?

    public init(statusURL: URL, pageURL: URL, previewURL: URL? = nil) {
        self.statusURL = statusURL
        self.pageURL = pageURL
        self.previewURL = previewURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.statusURL = try values.decode(URL.self, forKey: "status_url")
        self.pageURL = try values.decode(URL.self, forKey: "page_url")
        self.previewURL = try values.decodeIfPresent(URL.self, forKey: "preview_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(statusURL, forKey: "status_url")
        try values.encode(pageURL, forKey: "page_url")
        try values.encodeIfPresent(previewURL, forKey: "preview_url")
    }
}