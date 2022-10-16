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
            ZStack {
                NavigationLink(isActive: $store.isUserRepositoryActive) {
                    if let selected = store.selected {
                        UserRepositoryScreen(
                            store: .init(
                                context: .init(user: selected),
                                fetchUser: FetchUserInteractorImpl(),
                                fetchRepository: FetchRepositoryInteractorImpl()))
                    } else {
                        EmptyView()
                    }
                } label: {
                    EmptyView()
                }

                VStack {
                    if !store.hasAccessToken {
                        VStack(spacing: 8) {
                            Button {
                                store.onSetTapped()
                            } label: {
                                Text("Set Personal Access Token")
                                    .font(.headline)
                            }

                            Text("GitHub API has a rate limit without authentication, so please set your personal access token")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.init(uiColor: .secondaryLabel))
                                .font(.caption)
                                .padding([.horizontal])
                        }
                    } else {
                        Button {
                            store.onResetTapped()
                        } label: {
                            Text("Reset Personal Access Token")
                                .font(.headline)
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
                                    .font(.body)
                            }
                            .onTapGesture {
                                store.onSelect(user)
                            }
                            .onAppear {
                                if store.lastID == user.id {
                                    store.onReach(user)
                                }
                            }
                        }
                    }
                }
                .background(Color(uiColor: .systemGroupedBackground))
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
