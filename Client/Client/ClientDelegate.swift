//
//  ClientDelegate.swift
//  Client
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation
import Get

final class ClientDelegate: APIClientDelegate {

    var accessTokenProvider: (() -> String?)?

    init(accessTokenProvider: (() -> String?)? = nil) {
        self.accessTokenProvider = accessTokenProvider
    }

    func client(_ client: APIClient, willSendRequest request: inout URLRequest) async throws {
        if let accessToken = accessTokenProvider?() {
            request.setValue("Bearer: \(accessToken)", forHTTPHeaderField: "Authorization")
        }
    }

}
