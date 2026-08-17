package com.example.familyremotesupport

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

class SupportSessionViewModel : ViewModel() {

    private val _session = MutableStateFlow(
        SupportSession()
    )

    val session: StateFlow<SupportSession> = _session.asStateFlow()

    fun startSession(
        sessionId: String,
        deviceName: String
    ) {
        _session.value = SupportSession(
            sessionId = sessionId,
            deviceName = deviceName,
            isActive = true
        )
    }

    fun endSession() {
        _session.value = SupportSession()
    }
}
