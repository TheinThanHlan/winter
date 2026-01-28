import 'languages/JapanLanguageMap.dart';
import 'HomeController.dart';
import 'Home.dart';
import 'HomeModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

class HomeComponentConfig implements Configurer {
  Future<void> config({String? instanceName}) async {
    getIt.registerSingleton(
      instanceName: instanceName,
      HomeController(
        Home(),
        LanguageFactory(
          getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
          {"jp": JapanLanguageMap()},
        ),
      ),
    );
    debugPrint("\t~>\tHome injected;");
  }
}
