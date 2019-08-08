package com.coinbase.walletlink.models

import java.net.URL

/**
 * Represents a WalletLink session. A `Session` is created once a user scans a WalletLInk QR code
 *
 * @property id Session ID generated by the host
 * @property secret Secret used to encrypt/decrypt data between guest and host
 * @property url WalletLink server websocket URL
 */
data class Session(val id: String, val secret: String, val url: URL)
