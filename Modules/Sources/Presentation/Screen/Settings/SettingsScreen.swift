//
//  SettingsScreen.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/17.
//

import SwiftUI

struct SettingsScreen: View {

    @Environment(\.dismiss)
    var dismiss: DismissAction

    @StateObject
    var store: SettingsScreenStore

    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(role: .destructive) {
                        store.onResetTapped()
                        dismiss()
                    } label: {
                        Text("Reset Personal Access Token")
                            .font(.headline)
                    }
                } footer: {
                    Text("Resetting your personal access token will restrict GitHub API requests.")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.init(uiColor: .secondaryLabel))
                        .font(.caption)
                }
            }
            .listStyle(.insetGrouped)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(role: .cancel) {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
            .navigationTitle(.init("Settings"))
        }
    }

}
