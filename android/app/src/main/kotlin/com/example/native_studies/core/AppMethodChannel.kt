package com.example.native_studies.core

import android.app.Activity
import android.content.Context
import com.example.native_studies.core.managers.AppBatteryManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

@Suppress("UNCHECKED_CAST")
class AppMethodChannel(
    private val activity: Activity,
    private val call: MethodCall,
    private val result: MethodChannel.Result
) {
    private val pluginGetBatteryLevel = "GET_BATTERY_LEVEL"

    fun execute() {
        // Passando o contexto da activity
        val batteryManager = AppBatteryManager.getInstance(activity)
        val method = call.method
        val arguments = call.arguments as? Map<String, Any?>

        when(method) {
            pluginGetBatteryLevel -> {
                val value: Int = batteryManager.getBatteryLevel()
                // Retornando o valor da bateria via o result do Flutter MethodChannel
                result.success(value)
            }
            else -> {
                result.notImplemented()
            }
        }
    }
}
