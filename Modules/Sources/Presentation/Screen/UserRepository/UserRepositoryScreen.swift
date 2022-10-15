//
//  UserRepositoryScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import SwiftUI
import NukeUI

struct UserRepositoryScreen: View {

    @StateObject
    var store: UserRepositoryScreenStore

    var body: some View {
        Text(store.context.user.login)
    }

}
