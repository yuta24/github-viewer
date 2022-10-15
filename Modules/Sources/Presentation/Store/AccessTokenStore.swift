//
//  AccessTokenStore.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/15.
//

import Foundation
import KeychainAccess

public final class AccessTokenStore {

    private let keychain: Keychain

    public init(keychain: Keychain) {
        self.keychain = keychain
    }

    public func get() -> String? {
        do {
            return try keychain.getString("access_token")
        } catch {
            logger.debug("\(String(describing: self)): \(error.localizedDescription)")
            return nil
        }
    }

    public func set(_ token: String) {
        do {
            try keychain.set(token, key: "access_token")
        } catch {
            logger.debug("\(String(describing: self)): \(error.localizedDescription)")
        }
    }

    public func remove() {
        do {
            try keychain.remove("access_token")
        } catch {
            logger.debug("\(String(describing: self)): \(error.localizedDescription)")
        }
    }

}
