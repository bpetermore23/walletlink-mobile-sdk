// Copyright (c) 2017-2019 Coinbase Inc. See LICENSE

import CBStore

/// Represents a WalletLink session. A `Session` is created once a user scans a WalletLInk QR code
struct Session: Hashable, Equatable, Codable {
    /// Session ID generated by the host
    let id: String

    /// Secret used to encrypt/decrypt data between guest and host
    let secret: String

    /// WalletLink server websocket URL
    let rpcUrl: URL
}

// Used to encode/decode array of `Session`s
struct SessionList: Storable, Codable {
    let items: [Session]
}
