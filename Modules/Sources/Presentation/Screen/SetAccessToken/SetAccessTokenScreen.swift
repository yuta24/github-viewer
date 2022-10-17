//
//  SetAccessTokenScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/15.
//

import SwiftUI
import SafariServicesUI

struct SetAccessTokenScreen: View {

    @Environment(\.dismiss)
    var dismiss: DismissAction

    @StateObject
    var store: SetAccessTokenScreenStore

    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack(alignment: .leading, spacing: 24) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Set your GitHub's Personal Access Token")
                                .font(.headline)

                            Link(
                                "How do I create a Personal Access Token ?",
                                destination: .init(string: "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token")!)
                            .font(.caption)
                            .openURLInSafariView()
                        }
                    }
                }

                Section {
                    TextField("Personal Access Token", text: $store.token)
                        .keyboardType(.asciiCapable)
                }

                Section {
                    Button {
                        store.onSet()
                        dismiss()
                    } label: {
                        Text("Set")
                            .fontWeight(.bold)
                            .padding(4)
                    }
                    .disabled(store.token.isEmpty)
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(role: .cancel) {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
            .navigationTitle(.init("Set a PAT"))
        }
    }

}
