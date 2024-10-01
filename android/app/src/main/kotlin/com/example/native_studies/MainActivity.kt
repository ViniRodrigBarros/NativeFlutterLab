package com.example.native_studies

import com.example.native_studies.core.AppMethodChannel
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){

    companion object {
        const val APP_CHANNEL_NAME = "NATIVE_PLUGIN"
        var flutterEngine: FlutterEngine? = null
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MainActivity.flutterEngine = flutterEngine

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, APP_CHANNEL_NAME).setMethodCallHandler { call, result ->
            AppMethodChannel(this, call, result).execute()
        }
    }


}
