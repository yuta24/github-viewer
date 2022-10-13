// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RepoSearchResultItem: Codable, Identifiable {
    public var id: Int
    public var nodeID: String
    public var name: String
    public var fullName: String
    /// Simple User
    public var owner: NullableSimpleUser?
    public var isPrivate: Bool
    public var htmlURL: URL
    public var description: String?
    public var isFork: Bool
    public var url: URL
    public var createdAt: Date
    public var updatedAt: Date
    public var pushedAt: Date
    public var homepage: URL?
    public var size: Int
    public var stargazersCount: Int
    public var watchersCount: Int
    public var language: String?
    public var forksCount: Int
    public var openIssuesCount: Int
    public var masterBranch: String?
    public var defaultBranch: String
    public var score: Double
    public var forksURL: URL
    public var keysURL: String
    public var collaboratorsURL: String
    public var teamsURL: URL
    public var hooksURL: URL
    public var issueEventsURL: String
    public var eventsURL: URL
    public var assigneesURL: String
    public var branchesURL: String
    public var tagsURL: URL
    public var blobsURL: String
    public var gitTagsURL: String
    public var gitRefsURL: String
    public var treesURL: String
    public var statusesURL: String
    public var languagesURL: URL
    public var stargazersURL: URL
    public var contributorsURL: URL
    public var subscribersURL: URL
    public var subscriptionURL: URL
    public var commitsURL: String
    public var gitCommitsURL: String
    public var commentsURL: String
    public var issueCommentURL: String
    public var contentsURL: String
    public var compareURL: String
    public var mergesURL: URL
    public var archiveURL: String
    public var downloadsURL: URL
    public var issuesURL: String
    public var pullsURL: String
    public var milestonesURL: String
    public var notificationsURL: String
    public var labelsURL: String
    public var releasesURL: String
    public var deploymentsURL: URL
    public var gitURL: String
    public var sshURL: String
    public var cloneURL: String
    public var svnURL: URL
    public var forks: Int
    public var openIssues: Int
    public var watchers: Int
    public var topics: [String]?
    public var mirrorURL: URL?
    public var hasIssues: Bool
    public var hasProjects: Bool
    public var hasPages: Bool
    public var hasWiki: Bool
    public var hasDownloads: Bool
    public var isArchived: Bool
    /// Returns whether or not this repository disabled.
    public var isDisabled: Bool
    /// The repository visibility: public, private, or internal.
    public var visibility: String?
    /// License Simple
    public var license: NullableLicenseSimple?
    public var permissions: Permissions?
    /// Search Result Text Matches
    public var textMatches: [SearchResultTextMatch]?
    public var tempCloneToken: String?
    public var allowMergeCommit: Bool?
    public var allowSquashMerge: Bool?
    public var allowRebaseMerge: Bool?
    public var allowAutoMerge: Bool?
    public var deleteBranchOnMerge: Bool?
    public var allowForking: Bool?
    public var isTemplate: Bool?
    /// Example: false
    public var isWebCommitSignoffRequired: Bool?

    public struct Permissions: Codable {
        public var isAdmin: Bool
        public var isMaintain: Bool?
        public var isPush: Bool
        public var isTriage: Bool?
        public var isPull: Bool

        public init(isAdmin: Bool, isMaintain: Bool? = nil, isPush: Bool, isTriage: Bool? = nil, isPull: Bool) {
            self.isAdmin = isAdmin
            self.isMaintain = isMaintain
            self.isPush = isPush
            self.isTriage = isTriage
            self.isPull = isPull
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.isAdmin = try values.decode(Bool.self, forKey: "admin")
            self.isMaintain = try values.decodeIfPresent(Bool.self, forKey: "maintain")
            self.isPush = try values.decode(Bool.self, forKey: "push")
            self.isTriage = try values.decodeIfPresent(Bool.self, forKey: "triage")
            self.isPull = try values.decode(Bool.self, forKey: "pull")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(isAdmin, forKey: "admin")
            try values.encodeIfPresent(isMaintain, forKey: "maintain")
            try values.encode(isPush, forKey: "push")
            try values.encodeIfPresent(isTriage, forKey: "triage")
            try values.encode(isPull, forKey: "pull")
        }
    }

    public init(id: Int, nodeID: String, name: String, fullName: String, owner: NullableSimpleUser? = nil, isPrivate: Bool, htmlURL: URL, description: String? = nil, isFork: Bool, url: URL, createdAt: Date, updatedAt: Date, pushedAt: Date, homepage: URL? = nil, size: Int, stargazersCount: Int, watchersCount: Int, language: String? = nil, forksCount: Int, openIssuesCount: Int, masterBranch: String? = nil, defaultBranch: String, score: Double, forksURL: URL, keysURL: String, collaboratorsURL: String, teamsURL: URL, hooksURL: URL, issueEventsURL: String, eventsURL: URL, assigneesURL: String, branchesURL: String, tagsURL: URL, blobsURL: String, gitTagsURL: String, gitRefsURL: String, treesURL: String, statusesURL: String, languagesURL: URL, stargazersURL: URL, contributorsURL: URL, subscribersURL: URL, subscriptionURL: URL, commitsURL: String, gitCommitsURL: String, commentsURL: String, issueCommentURL: String, contentsURL: String, compareURL: String, mergesURL: URL, archiveURL: String, downloadsURL: URL, issuesURL: String, pullsURL: String, milestonesURL: String, notificationsURL: String, labelsURL: String, releasesURL: String, deploymentsURL: URL, gitURL: String, sshURL: String, cloneURL: String, svnURL: URL, forks: Int, openIssues: Int, watchers: Int, topics: [String]? = nil, mirrorURL: URL? = nil, hasIssues: Bool, hasProjects: Bool, hasPages: Bool, hasWiki: Bool, hasDownloads: Bool, isArchived: Bool, isDisabled: Bool, visibility: String? = nil, license: NullableLicenseSimple? = nil, permissions: Permissions? = nil, textMatches: [SearchResultTextMatch]? = nil, tempCloneToken: String? = nil, allowMergeCommit: Bool? = nil, allowSquashMerge: Bool? = nil, allowRebaseMerge: Bool? = nil, allowAutoMerge: Bool? = nil, deleteBranchOnMerge: Bool? = nil, allowForking: Bool? = nil, isTemplate: Bool? = nil, isWebCommitSignoffRequired: Bool? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.fullName = fullName
        self.owner = owner
        self.isPrivate = isPrivate
        self.htmlURL = htmlURL
        self.description = description
        self.isFork = isFork
        self.url = url
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.pushedAt = pushedAt
        self.homepage = homepage
        self.size = size
        self.stargazersCount = stargazersCount
        self.watchersCount = watchersCount
        self.language = language
        self.forksCount = forksCount
        self.openIssuesCount = openIssuesCount
        self.masterBranch = masterBranch
        self.defaultBranch = defaultBranch
        self.score = score
        self.forksURL = forksURL
        self.keysURL = keysURL
        self.collaboratorsURL = collaboratorsURL
        self.teamsURL = teamsURL
        self.hooksURL = hooksURL
        self.issueEventsURL = issueEventsURL
        self.eventsURL = eventsURL
        self.assigneesURL = assigneesURL
        self.branchesURL = branchesURL
        self.tagsURL = tagsURL
        self.blobsURL = blobsURL
        self.gitTagsURL = gitTagsURL
        self.gitRefsURL = gitRefsURL
        self.treesURL = treesURL
        self.statusesURL = statusesURL
        self.languagesURL = languagesURL
        self.stargazersURL = stargazersURL
        self.contributorsURL = contributorsURL
        self.subscribersURL = subscribersURL
        self.subscriptionURL = subscriptionURL
        self.commitsURL = commitsURL
        self.gitCommitsURL = gitCommitsURL
        self.commentsURL = commentsURL
        self.issueCommentURL = issueCommentURL
        self.contentsURL = contentsURL
        self.compareURL = compareURL
        self.mergesURL = mergesURL
        self.archiveURL = archiveURL
        self.downloadsURL = downloadsURL
        self.issuesURL = issuesURL
        self.pullsURL = pullsURL
        self.milestonesURL = milestonesURL
        self.notificationsURL = notificationsURL
        self.labelsURL = labelsURL
        self.releasesURL = releasesURL
        self.deploymentsURL = deploymentsURL
        self.gitURL = gitURL
        self.sshURL = sshURL
        self.cloneURL = cloneURL
        self.svnURL = svnURL
        self.forks = forks
        self.openIssues = openIssues
        self.watchers = watchers
        self.topics = topics
        self.mirrorURL = mirrorURL
        self.hasIssues = hasIssues
        self.hasProjects = hasProjects
        self.hasPages = hasPages
        self.hasWiki = hasWiki
        self.hasDownloads = hasDownloads
        self.isArchived = isArchived
        self.isDisabled = isDisabled
        self.visibility = visibility
        self.license = license
        self.permissions = permissions
        self.textMatches = textMatches
        self.tempCloneToken = tempCloneToken
        self.allowMergeCommit = allowMergeCommit
        self.allowSquashMerge = allowSquashMerge
        self.allowRebaseMerge = allowRebaseMerge
        self.allowAutoMerge = allowAutoMerge
        self.deleteBranchOnMerge = deleteBranchOnMerge
        self.allowForking = allowForking
        self.isTemplate = isTemplate
        self.isWebCommitSignoffRequired = isWebCommitSignoffRequired
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.name = try values.decode(String.self, forKey: "name")
        self.fullName = try values.decode(String.self, forKey: "full_name")
        self.owner = try values.decodeIfPresent(NullableSimpleUser.self, forKey: "owner")
        self.isPrivate = try values.decode(Bool.self, forKey: "private")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.isFork = try values.decode(Bool.self, forKey: "fork")
        self.url = try values.decode(URL.self, forKey: "url")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.pushedAt = try values.decode(Date.self, forKey: "pushed_at")
        self.homepage = try values.decodeIfPresent(URL.self, forKey: "homepage")
        self.size = try values.decode(Int.self, forKey: "size")
        self.stargazersCount = try values.decode(Int.self, forKey: "stargazers_count")
        self.watchersCount = try values.decode(Int.self, forKey: "watchers_count")
        self.language = try values.decodeIfPresent(String.self, forKey: "language")
        self.forksCount = try values.decode(Int.self, forKey: "forks_count")
        self.openIssuesCount = try values.decode(Int.self, forKey: "open_issues_count")
        self.masterBranch = try values.decodeIfPresent(String.self, forKey: "master_branch")
        self.defaultBranch = try values.decode(String.self, forKey: "default_branch")
        self.score = try values.decode(Double.self, forKey: "score")
        self.forksURL = try values.decode(URL.self, forKey: "forks_url")
        self.keysURL = try values.decode(String.self, forKey: "keys_url")
        self.collaboratorsURL = try values.decode(String.self, forKey: "collaborators_url")
        self.teamsURL = try values.decode(URL.self, forKey: "teams_url")
        self.hooksURL = try values.decode(URL.self, forKey: "hooks_url")
        self.issueEventsURL = try values.decode(String.self, forKey: "issue_events_url")
        self.eventsURL = try values.decode(URL.self, forKey: "events_url")
        self.assigneesURL = try values.decode(String.self, forKey: "assignees_url")
        self.branchesURL = try values.decode(String.self, forKey: "branches_url")
        self.tagsURL = try values.decode(URL.self, forKey: "tags_url")
        self.blobsURL = try values.decode(String.self, forKey: "blobs_url")
        self.gitTagsURL = try values.decode(String.self, forKey: "git_tags_url")
        self.gitRefsURL = try values.decode(String.self, forKey: "git_refs_url")
        self.treesURL = try values.decode(String.self, forKey: "trees_url")
        self.statusesURL = try values.decode(String.self, forKey: "statuses_url")
        self.languagesURL = try values.decode(URL.self, forKey: "languages_url")
        self.stargazersURL = try values.decode(URL.self, forKey: "stargazers_url")
        self.contributorsURL = try values.decode(URL.self, forKey: "contributors_url")
        self.subscribersURL = try values.decode(URL.self, forKey: "subscribers_url")
        self.subscriptionURL = try values.decode(URL.self, forKey: "subscription_url")
        self.commitsURL = try values.decode(String.self, forKey: "commits_url")
        self.gitCommitsURL = try values.decode(String.self, forKey: "git_commits_url")
        self.commentsURL = try values.decode(String.self, forKey: "comments_url")
        self.issueCommentURL = try values.decode(String.self, forKey: "issue_comment_url")
        self.contentsURL = try values.decode(String.self, forKey: "contents_url")
        self.compareURL = try values.decode(String.self, forKey: "compare_url")
        self.mergesURL = try values.decode(URL.self, forKey: "merges_url")
        self.archiveURL = try values.decode(String.self, forKey: "archive_url")
        self.downloadsURL = try values.decode(URL.self, forKey: "downloads_url")
        self.issuesURL = try values.decode(String.self, forKey: "issues_url")
        self.pullsURL = try values.decode(String.self, forKey: "pulls_url")
        self.milestonesURL = try values.decode(String.self, forKey: "milestones_url")
        self.notificationsURL = try values.decode(String.self, forKey: "notifications_url")
        self.labelsURL = try values.decode(String.self, forKey: "labels_url")
        self.releasesURL = try values.decode(String.self, forKey: "releases_url")
        self.deploymentsURL = try values.decode(URL.self, forKey: "deployments_url")
        self.gitURL = try values.decode(String.self, forKey: "git_url")
        self.sshURL = try values.decode(String.self, forKey: "ssh_url")
        self.cloneURL = try values.decode(String.self, forKey: "clone_url")
        self.svnURL = try values.decode(URL.self, forKey: "svn_url")
        self.forks = try values.decode(Int.self, forKey: "forks")
        self.openIssues = try values.decode(Int.self, forKey: "open_issues")
        self.watchers = try values.decode(Int.self, forKey: "watchers")
        self.topics = try values.decodeIfPresent([String].self, forKey: "topics")
        self.mirrorURL = try values.decodeIfPresent(URL.self, forKey: "mirror_url")
        self.hasIssues = try values.decode(Bool.self, forKey: "has_issues")
        self.hasProjects = try values.decode(Bool.self, forKey: "has_projects")
        self.hasPages = try values.decode(Bool.self, forKey: "has_pages")
        self.hasWiki = try values.decode(Bool.self, forKey: "has_wiki")
        self.hasDownloads = try values.decode(Bool.self, forKey: "has_downloads")
        self.isArchived = try values.decode(Bool.self, forKey: "archived")
        self.isDisabled = try values.decode(Bool.self, forKey: "disabled")
        self.visibility = try values.decodeIfPresent(String.self, forKey: "visibility")
        self.license = try values.decodeIfPresent(NullableLicenseSimple.self, forKey: "license")
        self.permissions = try values.decodeIfPresent(Permissions.self, forKey: "permissions")
        self.textMatches = try values.decodeIfPresent([SearchResultTextMatch].self, forKey: "text_matches")
        self.tempCloneToken = try values.decodeIfPresent(String.self, forKey: "temp_clone_token")
        self.allowMergeCommit = try values.decodeIfPresent(Bool.self, forKey: "allow_merge_commit")
        self.allowSquashMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_squash_merge")
        self.allowRebaseMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_rebase_merge")
        self.allowAutoMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_auto_merge")
        self.deleteBranchOnMerge = try values.decodeIfPresent(Bool.self, forKey: "delete_branch_on_merge")
        self.allowForking = try values.decodeIfPresent(Bool.self, forKey: "allow_forking")
        self.isTemplate = try values.decodeIfPresent(Bool.self, forKey: "is_template")
        self.isWebCommitSignoffRequired = try values.decodeIfPresent(Bool.self, forKey: "web_commit_signoff_required")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(name, forKey: "name")
        try values.encode(fullName, forKey: "full_name")
        try values.encodeIfPresent(owner, forKey: "owner")
        try values.encode(isPrivate, forKey: "private")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(isFork, forKey: "fork")
        try values.encode(url, forKey: "url")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(pushedAt, forKey: "pushed_at")
        try values.encodeIfPresent(homepage, forKey: "homepage")
        try values.encode(size, forKey: "size")
        try values.encode(stargazersCount, forKey: "stargazers_count")
        try values.encode(watchersCount, forKey: "watchers_count")
        try values.encodeIfPresent(language, forKey: "language")
        try values.encode(forksCount, forKey: "forks_count")
        try values.encode(openIssuesCount, forKey: "open_issues_count")
        try values.encodeIfPresent(masterBranch, forKey: "master_branch")
        try values.encode(defaultBranch, forKey: "default_branch")
        try values.encode(score, forKey: "score")
        try values.encode(forksURL, forKey: "forks_url")
        try values.encode(keysURL, forKey: "keys_url")
        try values.encode(collaboratorsURL, forKey: "collaborators_url")
        try values.encode(teamsURL, forKey: "teams_url")
        try values.encode(hooksURL, forKey: "hooks_url")
        try values.encode(issueEventsURL, forKey: "issue_events_url")
        try values.encode(eventsURL, forKey: "events_url")
        try values.encode(assigneesURL, forKey: "assignees_url")
        try values.encode(branchesURL, forKey: "branches_url")
        try values.encode(tagsURL, forKey: "tags_url")
        try values.encode(blobsURL, forKey: "blobs_url")
        try values.encode(gitTagsURL, forKey: "git_tags_url")
        try values.encode(gitRefsURL, forKey: "git_refs_url")
        try values.encode(treesURL, forKey: "trees_url")
        try values.encode(statusesURL, forKey: "statuses_url")
        try values.encode(languagesURL, forKey: "languages_url")
        try values.encode(stargazersURL, forKey: "stargazers_url")
        try values.encode(contributorsURL, forKey: "contributors_url")
        try values.encode(subscribersURL, forKey: "subscribers_url")
        try values.encode(subscriptionURL, forKey: "subscription_url")
        try values.encode(commitsURL, forKey: "commits_url")
        try values.encode(gitCommitsURL, forKey: "git_commits_url")
        try values.encode(commentsURL, forKey: "comments_url")
        try values.encode(issueCommentURL, forKey: "issue_comment_url")
        try values.encode(contentsURL, forKey: "contents_url")
        try values.encode(compareURL, forKey: "compare_url")
        try values.encode(mergesURL, forKey: "merges_url")
        try values.encode(archiveURL, forKey: "archive_url")
        try values.encode(downloadsURL, forKey: "downloads_url")
        try values.encode(issuesURL, forKey: "issues_url")
        try values.encode(pullsURL, forKey: "pulls_url")
        try values.encode(milestonesURL, forKey: "milestones_url")
        try values.encode(notificationsURL, forKey: "notifications_url")
        try values.encode(labelsURL, forKey: "labels_url")
        try values.encode(releasesURL, forKey: "releases_url")
        try values.encode(deploymentsURL, forKey: "deployments_url")
        try values.encode(gitURL, forKey: "git_url")
        try values.encode(sshURL, forKey: "ssh_url")
        try values.encode(cloneURL, forKey: "clone_url")
        try values.encode(svnURL, forKey: "svn_url")
        try values.encode(forks, forKey: "forks")
        try values.encode(openIssues, forKey: "open_issues")
        try values.encode(watchers, forKey: "watchers")
        try values.encodeIfPresent(topics, forKey: "topics")
        try values.encodeIfPresent(mirrorURL, forKey: "mirror_url")
        try values.encode(hasIssues, forKey: "has_issues")
        try values.encode(hasProjects, forKey: "has_projects")
        try values.encode(hasPages, forKey: "has_pages")
        try values.encode(hasWiki, forKey: "has_wiki")
        try values.encode(hasDownloads, forKey: "has_downloads")
        try values.encode(isArchived, forKey: "archived")
        try values.encode(isDisabled, forKey: "disabled")
        try values.encodeIfPresent(visibility, forKey: "visibility")
        try values.encodeIfPresent(license, forKey: "license")
        try values.encodeIfPresent(permissions, forKey: "permissions")
        try values.encodeIfPresent(textMatches, forKey: "text_matches")
        try values.encodeIfPresent(tempCloneToken, forKey: "temp_clone_token")
        try values.encodeIfPresent(allowMergeCommit, forKey: "allow_merge_commit")
        try values.encodeIfPresent(allowSquashMerge, forKey: "allow_squash_merge")
        try values.encodeIfPresent(allowRebaseMerge, forKey: "allow_rebase_merge")
        try values.encodeIfPresent(allowAutoMerge, forKey: "allow_auto_merge")
        try values.encodeIfPresent(deleteBranchOnMerge, forKey: "delete_branch_on_merge")
        try values.encodeIfPresent(allowForking, forKey: "allow_forking")
        try values.encodeIfPresent(isTemplate, forKey: "is_template")
        try values.encodeIfPresent(isWebCommitSignoffRequired, forKey: "web_commit_signoff_required")
    }
}
