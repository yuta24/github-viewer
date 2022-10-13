// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.EnterpriseInstallation.WithEnterpriseOrOrg {
    public var serverStatistics: ServerStatistics {
        ServerStatistics(path: path + "/server-statistics")
    }

    public struct ServerStatistics {
        /// Path: `/enterprise-installation/{enterprise_or_org}/server-statistics`
        public let path: String

        /// Get GitHub Enterprise Server statistics
        ///
        /// Returns aggregate usage metrics for your GitHub Enterprise Server 3.5+ instance for a specified time period up to 365 days.
        /// 
        /// To use this endpoint, your GitHub Enterprise Server instance must be connected to GitHub Enterprise Cloud using GitHub Connect. You must enable Server Statistics, and for the API request provide your enterprise account name or organization name connected to the GitHub Enterprise Server. For more information, see "[Enabling Server Statistics for your enterprise](/admin/configuration/configuring-github-connect/enabling-server-statistics-for-your-enterprise)" in the GitHub Enterprise Server documentation.
        /// 
        /// You'll need to use a personal access token:
        ///   - If you connected your GitHub Enterprise Server to an enterprise account and enabled Server Statistics, you'll need a personal access token with the `read:enterprise` permission.
        ///   - If you connected your GitHub Enterprise Server to an organization account and enabled Server Statistics, you'll need a personal access token with the `read:org` permission.
        /// 
        /// For more information on creating a personal access token, see "[Creating a personal access token](/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#get-github-enterprise-server-statistics)
        public func get(dateStart: String? = nil, dateEnd: String? = nil) -> Request<[ServerStatistic]> {
            Request(method: "GET", url: path, query: makeGetQuery(dateStart, dateEnd), id: "enterprise-admin/get-server-statistics")
        }

        private func makeGetQuery(_ dateStart: String?, _ dateEnd: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(dateStart, forKey: "date_start")
            encoder.encode(dateEnd, forKey: "date_end")
            return encoder.items
        }
    }
}
