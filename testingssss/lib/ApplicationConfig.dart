import 'package:flutter/material.dart';
import 'package:winter/winter.dart';

class ApplicationConfig implements Configurer {
  @override
  Future<void> config({String? instanceName}) async {
    getIt.registerSingleton<ValueNotifier<String>>(
      ValueNotifier("en"),
      instanceName: "currentLanguage",
    );
  }
}
