// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The duration of the interaction restriction. Default: `one_day`.
///
/// Example: "one_month"
public enum InteractionExpiry: String, Codable, CaseIterable {
    case oneDay = "one_day"
    case threeDays = "three_days"
    case oneWeek = "one_week"
    case oneMonth = "one_month"
    case sixMonths = "six_months"
}
