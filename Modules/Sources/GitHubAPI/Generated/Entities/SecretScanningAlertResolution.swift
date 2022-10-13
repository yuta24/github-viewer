// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// **Required when the `state` is `resolved`.** The reason for resolving the alert.
public enum SecretScanningAlertResolution: String, Codable, CaseIterable {
    case falsePositive = "false_positive"
    case wontFix = "wont_fix"
    case revoked
    case usedInTests = "used_in_tests"
}
