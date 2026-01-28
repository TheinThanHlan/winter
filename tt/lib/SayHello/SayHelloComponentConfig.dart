import 'languages/JapanLanguageMap.dart';
import 'SayHelloController.dart';
import 'SayHello.dart';
import 'SayHelloModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

class SayHelloComponentConfig implements Configurer {
  Future<void> config({String? instanceName}) async {
    getIt.registerSingleton(
      instanceName: instanceName,
      SayHelloController(
        SayHello(),
        LanguageFactory(
          getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
          {"jp": JapanLanguageMap()},
        ),
      ),
    );
    debugPrint("\t~>\tSayHello injected;");
  }
}
