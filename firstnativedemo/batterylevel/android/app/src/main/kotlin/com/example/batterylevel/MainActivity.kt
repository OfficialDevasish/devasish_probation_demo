package com.example.native

import android.util.Log
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.lang.reflect.Method

class MainActivity: FlutterActivity() {
    private val CHANNEL = "yourpackageName/channelName";

    private lateinit var channel: MethodChannel

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)


        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)

        channel.setMethodCallHandler { call, result ->
            var argument = call.arguments() as Map<String, String>;
            var message = argument["message"];
            if (call.method == "showToast") {


                Log.d("TAG", "message");
                Toast.makeText(this. message, Toast.LENGTH_LONG).show()
            }
        }
    }
}