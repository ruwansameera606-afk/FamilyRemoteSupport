package com.example.familyremotesupport

class SupportRepository {

    private val devices = mutableListOf<SupportDevice>()

    fun getDevices(): List<SupportDevice> {
        return devices.toList()
    }

    fun addDevice(device: SupportDevice) {
        devices.add(device)
    }

    fun removeDevice(deviceId: String) {
        devices.removeAll { it.deviceId == deviceId }
    }
}
