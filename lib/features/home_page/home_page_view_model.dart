import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:native_studies/core/native_plugin.dart';

import 'home_page.dart';

abstract class HomePageViewModel extends State<HomePage> {
  final _nativePlugin = Modular.get<NativePlugin>();
  bool isPasswordVisible = false;
  bool isCheck = true;

  @override
  void initState() {
    super.initState();
  }

  Future<int> getBatteryLevel() async {
    int batteryLevel = await _nativePlugin.getBatteryIntLevel();
    log('batteryLevel = $batteryLevel');
    return batteryLevel;
  }
}
