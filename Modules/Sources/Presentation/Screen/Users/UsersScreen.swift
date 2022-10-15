//
//  UsersScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/14.
//

import SwiftUI
import NukeUI

struct UsersScreen: View {

    @StateObject
    var store: UsersScreenStore

    var body: some View {
        NavigationView {
            VStack {
                if !store.hasAccessToken {
                    Button {
                        store.onSetTapped()
                    } label: {
                        VStack {
                            Text("Set Personal Access Token")
                            Text("GitHub API has a rate limit without authentication, so please set your personal access token")
                        }
                    }
                } else {
                    Button {
                        store.onResetTapped()
                    } label: {
                        Text("Reset Personal Access Token")
                    }
                }

                List {
                    ForEach(store.users) { user in
                        HStack(spacing: 12) {
                            LazyImage(url: user.avatarURL) { state in
                                if let image = state.image {
                                    image.resizingMode(.aspectFit)
                                } else {
                                    Color.gray
                                }
                            }
                            .frame(width: 48, height: 48)
                            .cornerRadius(24)

                            Text(user.login)
                        }
                        .onAppear {
                            if let last = store.users.last, last.id == user.id {
                                store.onReach(user)
                            }
                        }
                    }
                }
            }
            .navigationTitle(.init("Users"))
        }
        .task {
            store.onTask()
        }
        .sheet(isPresented: $store.isSetPresented, onDismiss: {
            store.onSetDismiss()
        }, content: {
            SetAccessTokenScreen(
                store: .init(
                    updateAccessToken: UpdateAccessTokenInteractorImpl()))
        })
    }

}
