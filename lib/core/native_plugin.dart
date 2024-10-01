import 'package:flutter/services.dart';

class NativePlugin {
  static final instance = NativePlugin._();
  static const _nativePlugin = 'NATIVE_PLUGIN';
  final methodChannel = const MethodChannel(_nativePlugin);
  NativePlugin._();

  static const getBatteryLevel = 'GET_BATTERY_LEVEL';

  Future<int> getBatteryIntLevel() async {
    int value = await methodChannel.invokeMethod<int>(getBatteryLevel) ?? 0;
    return value;
  }
}
