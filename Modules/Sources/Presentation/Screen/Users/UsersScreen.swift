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
                    }
                } label: {
                    EmptyView()
                }

                List {
                    Section {
                        if !store.hasAccessToken {
                            VStack(alignment: .leading, spacing: 8) {
                                Button {
                                    store.onSetTapped()
                                } label: {
                                    Text("Set Personal Access Token")
                                        .font(.headline)
                                        .foregroundColor(.init(uiColor: .label))
                                }

                                Text("GitHub API has a rate limit without authentication, so please set your personal access token")
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.init(uiColor: .secondaryLabel))
                                    .font(.caption)
                            }
                        }
                    } footer: {
                        if store.users.isEmpty {
                            Text("Please set your personal access token and then pull-to refresh.")
                        }
                    }

                    Section {
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
                .listStyle(.insetGrouped)
                .refreshable {
                    store.onRefresh()
                }
            }
            .toolbar(content: {
                    ToolbarItem(placement: .primaryAction) {
                        if store.hasAccessToken {
                            Button {
                                store.onSettingsTapped()
                            } label: {
                                Image(systemName: "gear")
                            }
                        } else {
                            EmptyView()
                        }
                    }
            })
            .navigationTitle(.init("Users"))
        }
        .task {
            store.onTask()
        }
        .sheet(isPresented: $store.isSettingsPresented, onDismiss: {
            store.onSettingsDismiss()
        }, content: {
            SettingsScreen(store: .init(
                fetchAccessToken: FetchAccessTokenInteractorImpl(),
                resetAccessToken: ResetAccessTokenInteractorImpl()))
        })
        .sheet(isPresented: $store.isSetPresented, onDismiss: {
            store.onSetDismiss()
        }, content: {
            SetAccessTokenScreen(
                store: .init(
                    updateAccessToken: UpdateAccessTokenInteractorImpl()))
        })
    }

}
