import 'package:flutter/material.dart';
import 'package:winter/winter.dart';
import './SayHello/all.dart';
import './data/dao/DaoConfig.dart';

class ApplicationConfig implements Configurer {
  @override
  Future<void> config({String? instanceName}) async {
    getIt.registerSingleton<ValueNotifier<String>>(
      ValueNotifier("jp"),
      instanceName: "currentLanguage",
    );
    await DaoConfig().config();
    SayHelloComponentConfig().config();
  }
}
