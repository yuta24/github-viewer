// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Simple webhook delivery
///
/// Delivery made by a webhook, without request and response information.
public struct HookDeliveryItem: Codable, Identifiable {
    /// Unique identifier of the webhook delivery.
    ///
    /// Example: 42
    public var id: Int
    /// Unique identifier for the event (shared with all deliveries for all webhooks that subscribe to this event).
    ///
    /// Example: "58474f00-b361-11eb-836d-0e4f3503ccbe"
    public var guid: String
    /// Time when the webhook delivery occurred.
    ///
    /// Example: "2021-05-12T20:33:44Z"
    public var deliveredAt: Date
    /// Whether the webhook delivery is a redelivery.
    ///
    /// Example: false
    public var isRedelivery: Bool
    /// Time spent delivering.
    ///
    /// Example: 0.03
    public var duration: Double
    /// Describes the response returned after attempting the delivery.
    ///
    /// Example: "failed to connect"
    public var status: String
    /// Status code received when delivery was made.
    ///
    /// Example: 502
    public var statusCode: Int
    /// The event that triggered the delivery.
    ///
    /// Example: "issues"
    public var event: String
    /// The type of activity for the event that triggered the delivery.
    ///
    /// Example: "opened"
    public var action: String?
    /// The id of the GitHub App installation associated with this event.
    ///
    /// Example: 123
    public var installationID: Int?
    /// The id of the repository associated with this event.
    ///
    /// Example: 123
    public var repositoryID: Int?

    public init(id: Int, guid: String, deliveredAt: Date, isRedelivery: Bool, duration: Double, status: String, statusCode: Int, event: String, action: String? = nil, installationID: Int? = nil, repositoryID: Int? = nil) {
        self.id = id
        self.guid = guid
        self.deliveredAt = deliveredAt
        self.isRedelivery = isRedelivery
        self.duration = duration
        self.status = status
        self.statusCode = statusCode
        self.event = event
        self.action = action
        self.installationID = installationID
        self.repositoryID = repositoryID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.guid = try values.decode(String.self, forKey: "guid")
        self.deliveredAt = try values.decode(Date.self, forKey: "delivered_at")
        self.isRedelivery = try values.decode(Bool.self, forKey: "redelivery")
        self.duration = try values.decode(Double.self, forKey: "duration")
        self.status = try values.decode(String.self, forKey: "status")
        self.statusCode = try values.decode(Int.self, forKey: "status_code")
        self.event = try values.decode(String.self, forKey: "event")
        self.action = try values.decodeIfPresent(String.self, forKey: "action")
        self.installationID = try values.decodeIfPresent(Int.self, forKey: "installation_id")
        self.repositoryID = try values.decodeIfPresent(Int.self, forKey: "repository_id")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(guid, forKey: "guid")
        try values.encode(deliveredAt, forKey: "delivered_at")
        try values.encode(isRedelivery, forKey: "redelivery")
        try values.encode(duration, forKey: "duration")
        try values.encode(status, forKey: "status")
        try values.encode(statusCode, forKey: "status_code")
        try values.encode(event, forKey: "event")
        try values.encodeIfPresent(action, forKey: "action")
        try values.encodeIfPresent(installationID, forKey: "installation_id")
        try values.encodeIfPresent(repositoryID, forKey: "repository_id")
    }
}
