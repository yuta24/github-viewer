//
//  UserRepositoryScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import SwiftUI
import GitHubAPI
import NukeUI
import SafariServicesUI

struct UserRepositoryScreen: View {

    struct UserInfo: View {

        let user: User

        var body: some View {
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 12) {
                    LazyImage(url: user.avatarURL) { state in
                        if let image = state.image {
                            image.resizingMode(.aspectFit)
                        } else {
                            Color.gray
                        }
                    }
                    .frame(width: 64, height: 64)
                    .clipShape(Capsule())

                    VStack(alignment: .leading) {
                        if let name = user.name {
                            Text(name)
                                .fontWeight(.bold)
                        }

                        Text(user.login)
                            .foregroundColor(.init(uiColor: .secondaryLabel))
                    }
                }

                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                        .lineLimit(4)
                }

                HStack(spacing: 4) {
                    HStack(spacing: 2) {
                        Text("\(user.followers)")
                        Text("followers")
                            .foregroundColor(.init(uiColor: .secondaryLabel))
                    }

                    Text("・")

                    HStack(spacing: 2) {
                        Text("\(user.following)")
                        Text("following")
                            .foregroundColor(.init(uiColor: .secondaryLabel))
                    }
                }
                .font(.caption)
            }
        }

    }

    struct RepositoryItem: View {

        let repository: MinimalRepository

        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                Text(repository.name)
                    .font(.headline)

                if let description = repository.description {
                    Text(description)
                        .font(.caption)
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                }

                HStack {
                    if let language = repository.language {
                        Text(language)
                            .foregroundColor(Color(uiColor: .secondaryLabel))
                            .font(.caption)
                    }

                    (Text(Image(systemName: "star")) + Text("\(repository.stargazersCount ?? 0)"))
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                        .font(.caption)
                }
            }
        }

    }

    @StateObject
    var store: UserRepositoryScreenStore

    var body: some View {
        VStack {
            if let user = store.user {
                VStack(alignment: .leading, spacing: 0) {
                    UserInfo(user: user)
                        .padding()

                    Divider()

                    List {
                        Section {
                            ForEach(store.repositories) { repository in
                                RepositoryItem(repository: repository)
                                    .onTapGesture {
                                        store.onOpen(repository.htmlURL)
                                    }
                            }
                        } header: {
                            Text("Repositories")
                        }
                    }
                }
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .task {
            store.onTask()
        }
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: $store.isPresented) {
            if let url = store.url {
                SafariView(url: url)
            }
        }
    }

}
