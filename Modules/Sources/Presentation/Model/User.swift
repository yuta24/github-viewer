//
//  User.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import Foundation

struct User: Identifiable {

    let id: Int
    let avatarURL: URL
    let login: String
    let name: String?
    let followers: Int
    let following: Int
}
