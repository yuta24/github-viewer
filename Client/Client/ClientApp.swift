//
//  ClientApp.swift
//  Client
//
//  Created by yuta24 on 2022/10/13.
//

import SwiftUI
import Get
import KeychainAccess
import Resolver
import Presentation

@main
struct ClientApp: App {

    var body: some Scene {
        WindowGroup {
            Window.build()
        }
    }

    init() {
        Resolver.register {
            APIClient(baseURL: .init(string: "https://api.github.com")!)
        }
        Resolver.register {
            AccessTokenStore(keychain: .init())
        }
    }

}
