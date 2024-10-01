package com.example.native_studies.core.managers

import android.content.Context
import android.os.BatteryManager
import android.os.Build

class AppBatteryManager private constructor(private val context: Context) {

    companion object {
        @Volatile
        private var INSTANCE: AppBatteryManager? = null

        fun getInstance(context: Context): AppBatteryManager {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: AppBatteryManager(context.applicationContext).also { INSTANCE = it }
            }
        }
    }


    fun getBatteryLevel(): Int {
        val batteryLevel: Int
        val batteryManager = context.getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)

        return batteryLevel
    }
}
