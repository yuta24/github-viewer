// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssueEvent: Codable, Identifiable {
    public var id: Int
    /// Example: "MDEwOklzc3VlRXZlbnQx"
    public var nodeID: String
    /// Example: "https://api.github.com/repos/octocat/Hello-World/issues/events/1"
    public var url: URL
    /// Simple User
    public var actor: NullableSimpleUser?
    /// Example: "closed"
    public var event: String
    /// Example: "6dcb09b5b57875f334f61aebed695e2e4193db5e"
    public var commitID: String?
    /// Example: "https://api.github.com/repos/octocat/Hello-World/commits/6dcb09b5b57875f334f61aebed695e2e4193db5e"
    public var commitURL: String?
    /// Example: "2011-04-14T16:00:49Z"
    public var createdAt: Date
    /// Issues are a great way to keep track of tasks, enhancements, and bugs for your projects.
    public var issue: NullableIssue?
    /// Issue Event Label
    public var label: IssueEventLabel?
    /// Simple User
    public var assignee: NullableSimpleUser?
    /// Simple User
    public var assigner: NullableSimpleUser?
    /// Simple User
    public var reviewRequester: NullableSimpleUser?
    /// Simple User
    public var requestedReviewer: NullableSimpleUser?
    /// Team
    ///
    /// Groups of organization members that gives permissions on specified repositories.
    public var requestedTeam: Team?
    /// Issue Event Dismissed Review
    public var dismissedReview: IssueEventDismissedReview?
    /// Issue Event Milestone
    public var milestone: IssueEventMilestone?
    /// Issue Event Project Card
    public var projectCard: IssueEventProjectCard?
    /// Issue Event Rename
    public var rename: IssueEventRename?
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation?
    public var lockReason: String?
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: NullableIntegration?

    public init(id: Int, nodeID: String, url: URL, actor: NullableSimpleUser? = nil, event: String, commitID: String? = nil, commitURL: String? = nil, createdAt: Date, issue: NullableIssue? = nil, label: IssueEventLabel? = nil, assignee: NullableSimpleUser? = nil, assigner: NullableSimpleUser? = nil, reviewRequester: NullableSimpleUser? = nil, requestedReviewer: NullableSimpleUser? = nil, requestedTeam: Team? = nil, dismissedReview: IssueEventDismissedReview? = nil, milestone: IssueEventMilestone? = nil, projectCard: IssueEventProjectCard? = nil, rename: IssueEventRename? = nil, authorAssociation: AuthorAssociation? = nil, lockReason: String? = nil, performedViaGithubApp: NullableIntegration? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.actor = actor
        self.event = event
        self.commitID = commitID
        self.commitURL = commitURL
        self.createdAt = createdAt
        self.issue = issue
        self.label = label
        self.assignee = assignee
        self.assigner = assigner
        self.reviewRequester = reviewRequester
        self.requestedReviewer = requestedReviewer
        self.requestedTeam = requestedTeam
        self.dismissedReview = dismissedReview
        self.milestone = milestone
        self.projectCard = projectCard
        self.rename = rename
        self.authorAssociation = authorAssociation
        self.lockReason = lockReason
        self.performedViaGithubApp = performedViaGithubApp
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.url = try values.decode(URL.self, forKey: "url")
        self.actor = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "actor")
        self.event = try values.decode(String.self, forKey: "event")
        self.commitID = try values.decodeIfPresent(String.self, forKey: "commit_id")
        self.commitURL = try values.decodeIfPresent(String.self, forKey: "commit_url")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.issue = try values.decodeIfPresent(NullableIssue.self, forKey: "issue")
        self.label = try values.decodeIfPresent(IssueEventLabel.self, forKey: "label")
        self.assignee = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "assignee")
        self.assigner = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "assigner")
        self.reviewRequester = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "review_requester")
        self.requestedReviewer = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "requested_reviewer")
        self.requestedTeam = try values.decodeIfPresent(Team.self, forKey: "requested_team")
        self.dismissedReview = try values.decodeIfPresent(IssueEventDismissedReview.self, forKey: "dismissed_review")
        self.milestone = try values.decodeIfPresent(IssueEventMilestone.self, forKey: "milestone")
        self.projectCard = try values.decodeIfPresent(IssueEventProjectCard.self, forKey: "project_card")
        self.rename = try values.decodeIfPresent(IssueEventRename.self, forKey: "rename")
        self.authorAssociation = try values.decodeIfPresent(AuthorAssociation.self, forKey: "author_association")
        self.lockReason = try values.decodeIfPresent(String.self, forKey: "lock_reason")
        self.performedViaGithubApp = try values.decodeIfPresent(NullableIntegration.self, forKey: "performed_via_github_app")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(url, forKey: "url")
        try values.encodeIfPresent(actor, forKey: "actor")
        try values.encode(event, forKey: "event")
        try values.encodeIfPresent(commitID, forKey: "commit_id")
        try values.encodeIfPresent(commitURL, forKey: "commit_url")
        try values.encode(createdAt, forKey: "created_at")
        try values.encodeIfPresent(issue, forKey: "issue")
        try values.encodeIfPresent(label, forKey: "label")
        try values.encodeIfPresent(assignee, forKey: "assignee")
        try values.encodeIfPresent(assigner, forKey: "assigner")
        try values.encodeIfPresent(reviewRequester, forKey: "review_requester")
        try values.encodeIfPresent(requestedReviewer, forKey: "requested_reviewer")
        try values.encodeIfPresent(requestedTeam, forKey: "requested_team")
        try values.encodeIfPresent(dismissedReview, forKey: "dismissed_review")
        try values.encodeIfPresent(milestone, forKey: "milestone")
        try values.encodeIfPresent(projectCard, forKey: "project_card")
        try values.encodeIfPresent(rename, forKey: "rename")
        try values.encodeIfPresent(authorAssociation, forKey: "author_association")
        try values.encodeIfPresent(lockReason, forKey: "lock_reason")
        try values.encodeIfPresent(performedViaGithubApp, forKey: "performed_via_github_app")
    }
}