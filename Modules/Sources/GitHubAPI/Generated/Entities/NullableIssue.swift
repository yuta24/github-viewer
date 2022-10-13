// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Issue
///
/// Issues are a great way to keep track of tasks, enhancements, and bugs for your projects.
public struct NullableIssue: Codable, Identifiable {
    public var id: Int
    public var nodeID: String
    /// URL for the issue
    ///
    /// Example: "https://api.github.com/repositories/42/issues/1"
    public var url: URL
    public var repositoryURL: URL
    public var labelsURL: String
    public var commentsURL: URL
    public var eventsURL: URL
    public var htmlURL: URL
    /// Number uniquely identifying the issue within its repository
    ///
    /// Example: 42
    public var number: Int
    /// State of the issue; either 'open' or 'closed'
    ///
    /// Example: "open"
    public var state: String
    /// The reason for the current state
    ///
    /// Example: "not_planned"
    public var stateReason: StateReason?
    /// Title of the issue
    ///
    /// Example: "Widget creation fails in Safari on OS X 10.8"
    public var title: String
    /// Contents of the issue
    ///
    /// Example: "It looks like the new widget form is broken on Safari. When I try and create the widget, Safari crashes. This is reproducible on 10.8, but not 10.9. Maybe a browser bug?"
    public var body: String?
    /// Simple User
    public var user: NullableSimpleUser?
    /// Labels to associate with this issue; pass one or more label names to replace the set of labels on this issue; send an empty array to clear all labels from the issue; note that the labels are silently dropped for users without push access to the repository
    ///
    /// Example: ["bug", "registration"]
    public var labels: [Label]
    /// Simple User
    public var assignee: NullableSimpleUser?
    public var assignees: [SimpleUser]?
    /// A collection of related issues and pull requests.
    public var milestone: NullableMilestone?
    public var isLocked: Bool
    public var activeLockReason: String?
    public var comments: Int
    public var pullRequest: PullRequest?
    public var closedAt: Date?
    public var createdAt: Date
    public var updatedAt: Date
    public var isDraft: Bool?
    /// Simple User
    public var closedBy: NullableSimpleUser?
    public var bodyHTML: String?
    public var bodyText: String?
    public var timelineURL: URL?
    /// A git repository
    public var repository: Repository?
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: NullableIntegration?
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation
    /// Reaction Rollup
    public var reactions: ReactionRollup?

    /// The reason for the current state
    ///
    /// Example: "not_planned"
    public enum StateReason: String, Codable, CaseIterable {
        case completed
        case reopened
        case notPlanned = "not_planned"
    }

    public enum Label: Codable {
        case string(String)
        case object(Object)

        public struct Object: Codable, Identifiable {
            public var id: Int64?
            public var nodeID: String?
            public var url: URL?
            public var name: String?
            public var description: String?
            public var color: String?
            public var isDefault: Bool?

            public init(id: Int64? = nil, nodeID: String? = nil, url: URL? = nil, name: String? = nil, description: String? = nil, color: String? = nil, isDefault: Bool? = nil) {
                self.id = id
                self.nodeID = nodeID
                self.url = url
                self.name = name
                self.description = description
                self.color = color
                self.isDefault = isDefault
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
                self.nodeID = try values.decodeIfPresent(String.self, forKey: "node_id")
                self.url = try values.decodeIfPresent(URL.self, forKey: "url")
                self.name = try values.decodeIfPresent(String.self, forKey: "name")
                self.description = try values.decodeIfPresent(String.self, forKey: "description")
                self.color = try values.decodeIfPresent(String.self, forKey: "color")
                self.isDefault = try values.decodeIfPresent(Bool.self, forKey: "default")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(id, forKey: "id")
                try values.encodeIfPresent(nodeID, forKey: "node_id")
                try values.encodeIfPresent(url, forKey: "url")
                try values.encodeIfPresent(name, forKey: "name")
                try values.encodeIfPresent(description, forKey: "description")
                try values.encodeIfPresent(color, forKey: "color")
                try values.encodeIfPresent(isDefault, forKey: "default")
            }
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(String.self) {
                self = .string(value)
            } else if let value = try? container.decode(Object.self) {
                self = .object(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (String, Object)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .string(let value): try container.encode(value)
            case .object(let value): try container.encode(value)
            }
        }
    }

    public struct PullRequest: Codable {
        public var mergedAt: Date?
        public var diffURL: URL?
        public var htmlURL: URL?
        public var patchURL: URL?
        public var url: URL?

        public init(mergedAt: Date? = nil, diffURL: URL? = nil, htmlURL: URL? = nil, patchURL: URL? = nil, url: URL? = nil) {
            self.mergedAt = mergedAt
            self.diffURL = diffURL
            self.htmlURL = htmlURL
            self.patchURL = patchURL
            self.url = url
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.mergedAt = try values.decodeIfPresent(Date.self, forKey: "merged_at")
            self.diffURL = try values.decodeIfPresent(URL.self, forKey: "diff_url")
            self.htmlURL = try values.decodeIfPresent(URL.self, forKey: "html_url")
            self.patchURL = try values.decodeIfPresent(URL.self, forKey: "patch_url")
            self.url = try values.decodeIfPresent(URL.self, forKey: "url")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(mergedAt, forKey: "merged_at")
            try values.encodeIfPresent(diffURL, forKey: "diff_url")
            try values.encodeIfPresent(htmlURL, forKey: "html_url")
            try values.encodeIfPresent(patchURL, forKey: "patch_url")
            try values.encodeIfPresent(url, forKey: "url")
        }
    }

    public init(id: Int, nodeID: String, url: URL, repositoryURL: URL, labelsURL: String, commentsURL: URL, eventsURL: URL, htmlURL: URL, number: Int, state: String, stateReason: StateReason? = nil, title: String, body: String? = nil, user: NullableSimpleUser? = nil, labels: [Label], assignee: NullableSimpleUser? = nil, assignees: [SimpleUser]? = nil, milestone: NullableMilestone? = nil, isLocked: Bool, activeLockReason: String? = nil, comments: Int, pullRequest: PullRequest? = nil, closedAt: Date? = nil, createdAt: Date, updatedAt: Date, isDraft: Bool? = nil, closedBy: NullableSimpleUser? = nil, bodyHTML: String? = nil, bodyText: String? = nil, timelineURL: URL? = nil, repository: Repository? = nil, performedViaGithubApp: NullableIntegration? = nil, authorAssociation: AuthorAssociation, reactions: ReactionRollup? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.repositoryURL = repositoryURL
        self.labelsURL = labelsURL
        self.commentsURL = commentsURL
        self.eventsURL = eventsURL
        self.htmlURL = htmlURL
        self.number = number
        self.state = state
        self.stateReason = stateReason
        self.title = title
        self.body = body
        self.user = user
        self.labels = labels
        self.assignee = assignee
        self.assignees = assignees
        self.milestone = milestone
        self.isLocked = isLocked
        self.activeLockReason = activeLockReason
        self.comments = comments
        self.pullRequest = pullRequest
        self.closedAt = closedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.isDraft = isDraft
        self.closedBy = closedBy
        self.bodyHTML = bodyHTML
        self.bodyText = bodyText
        self.timelineURL = timelineURL
        self.repository = repository
        self.performedViaGithubApp = performedViaGithubApp
        self.authorAssociation = authorAssociation
        self.reactions = reactions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.url = try values.decode(URL.self, forKey: "url")
        self.repositoryURL = try values.decode(URL.self, forKey: "repository_url")
        self.labelsURL = try values.decode(String.self, forKey: "labels_url")
        self.commentsURL = try values.decode(URL.self, forKey: "comments_url")
        self.eventsURL = try values.decode(URL.self, forKey: "events_url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.number = try values.decode(Int.self, forKey: "number")
        self.state = try values.decode(String.self, forKey: "state")
        self.stateReason = try values.decodeIfPresent(StateReason.self, forKey: "state_reason")
        self.title = try values.decode(String.self, forKey: "title")
        self.body = try values.decodeIfPresent(String.self, forKey: "body")
        self.user = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "user")
        self.labels = try values.decode([Label].self, forKey: "labels")
        self.assignee = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "assignee")
        self.assignees = try values.decodeIfPresent([SimpleUser].self, forKey: "assignees")
        self.milestone = try values.decodeIfPresent(NullableMilestone.self, forKey: "milestone")
        self.isLocked = try values.decode(Bool.self, forKey: "locked")
        self.activeLockReason = try values.decodeIfPresent(String.self, forKey: "active_lock_reason")
        self.comments = try values.decode(Int.self, forKey: "comments")
        self.pullRequest = try values.decodeIfPresent(PullRequest.self, forKey: "pull_request")
        self.closedAt = try values.decodeIfPresent(Date.self, forKey: "closed_at")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.isDraft = try values.decodeIfPresent(Bool.self, forKey: "draft")
        self.closedBy = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "closed_by")
        self.bodyHTML = try values.decodeIfPresent(String.self, forKey: "body_html")
        self.bodyText = try values.decodeIfPresent(String.self, forKey: "body_text")
        self.timelineURL = try values.decodeIfPresent(URL.self, forKey: "timeline_url")
        self.repository = try values.decodeIfPresent(Repository.self, forKey: "repository")
        self.performedViaGithubApp = try values.decodeIfPresent(NullableIntegration.self, forKey: "performed_via_github_app")
        self.authorAssociation = try values.decode(AuthorAssociation.self, forKey: "author_association")
        self.reactions = try values.decodeIfPresent(ReactionRollup.self, forKey: "reactions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(url, forKey: "url")
        try values.encode(repositoryURL, forKey: "repository_url")
        try values.encode(labelsURL, forKey: "labels_url")
        try values.encode(commentsURL, forKey: "comments_url")
        try values.encode(eventsURL, forKey: "events_url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(number, forKey: "number")
        try values.encode(state, forKey: "state")
        try values.encodeIfPresent(stateReason, forKey: "state_reason")
        try values.encode(title, forKey: "title")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(user, forKey: "user")
        try values.encode(labels, forKey: "labels")
        try values.encodeIfPresent(assignee, forKey: "assignee")
        try values.encodeIfPresent(assignees, forKey: "assignees")
        try values.encodeIfPresent(milestone, forKey: "milestone")
        try values.encode(isLocked, forKey: "locked")
        try values.encodeIfPresent(activeLockReason, forKey: "active_lock_reason")
        try values.encode(comments, forKey: "comments")
        try values.encodeIfPresent(pullRequest, forKey: "pull_request")
        try values.encodeIfPresent(closedAt, forKey: "closed_at")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encodeIfPresent(isDraft, forKey: "draft")
        try values.encodeIfPresent(closedBy, forKey: "closed_by")
        try values.encodeIfPresent(bodyHTML, forKey: "body_html")
        try values.encodeIfPresent(bodyText, forKey: "body_text")
        try values.encodeIfPresent(timelineURL, forKey: "timeline_url")
        try values.encodeIfPresent(repository, forKey: "repository")
        try values.encodeIfPresent(performedViaGithubApp, forKey: "performed_via_github_app")
        try values.encode(authorAssociation, forKey: "author_association")
        try values.encodeIfPresent(reactions, forKey: "reactions")
    }
}
