// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Packages.WithPackageType.WithPackageName {
    public var versions: Versions {
        Versions(path: path + "/versions")
    }

    public struct Versions {
        /// Path: `/users/{username}/packages/{package_type}/{package_name}/versions`
        public let path: String

        /// List package versions for a package owned by a user
        ///
        /// Lists package versions for a public package owned by a specified user.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` scope.
        /// If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/packages#get-all-package-versions-for-a-package-owned-by-a-user)
        public var get: Request<[GitHubAPI.PackageVersion]> {
            Request(method: "GET", url: path, id: "packages/get-all-package-versions-for-package-owned-by-user")
        }
    }
}
