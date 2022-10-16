//
//  UserRepositoryScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import SwiftUI
import NukeUI
import SafariServicesUI

struct UserRepositoryScreen: View {

    @StateObject
    var store: UserRepositoryScreenStore

    var body: some View {
        VStack {
            if let user = store.user {
                VStack {
                    VStack {
                        HStack {
                            LazyImage(url: user.avatarURL) { state in
                                if let image = state.image {
                                    image.resizingMode(.aspectFit)
                                } else {
                                    Color.gray
                                }
                            }
                            .frame(width: 80, height: 80)
                            .cornerRadius(40)

                            Text(user.name ?? user.login)
                        }

                        HStack {
                            VStack {
                                Text("followers")
                                Text("\(user.followers)")
                            }

                            VStack {
                                Text("following")
                                Text("\(user.following)")
                            }
                        }
                    }

                    List(store.repositories) { repository in
                        VStack(alignment: .leading) {
                            Text(repository.name)

                            HStack {
                                Text(repository.language ?? "Unknown")

                                Text("\(repository.stargazersCount ?? 0)")
                            }

                            if let description = repository.description {
                                Text(description)
                            }
                        }
                        .onTapGesture {
                            store.onOpen(repository.htmlURL)
                        }
                    }
                }
            } else {
                Text(store.context.user.login)
            }
        }
        .task {
            store.onTask()
        }
        .fullScreenCover(isPresented: $store.isPresented) {
            if let url = store.url {
                SafariView(url: url)
            }
        }
    }

}
