package com.example.familyremotesupport

data class SupportSession(
    val sessionId: String = "",
    val deviceName: String = "",
    val isActive: Boolean = false
)

data class SupportDevice(
    val deviceId: String = "",
    val deviceName: String = "",
    val isOnline: Boolean = false
)
