//
//  ClientApp.swift
//  Client
//
//  Created by yuta24 on 2022/10/13.
//

import SwiftUI
import Get
import KeychainAccess
import Pulse
import PulseUI
import Resolver
import Presentation

@main
struct ClientApp: App {

    @State
    var isDebugPresented: Bool = false

    var body: some Scene {
        WindowGroup {
            Window.build()
            #if DEBUG
                .sheet(isPresented: $isDebugPresented) {
                    MainView()
                }
                .onShake {
                    isDebugPresented = true
                }
            #endif
        }
    }

    init() {
        Resolver.register {
            APIClient(baseURL: .init(string: "https://api.github.com")!) { configuration in
                configuration.sessionDelegate = Pulse.URLSessionProxyDelegate()
            }
        }
        Resolver.register {
            AccessTokenStore(keychain: .init())
        }
    }

}
