import 'EeController.dart';
import 'Ee.dart';
import 'EeModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

import 'languages/LanguageFactory.dart';

class EeComponentConfig implements Configurer {
  Future<void> config({String? instanceName}) async {
    getIt.registerSingleton(
      instanceName: instanceName,
      EeController(
        Ee(),
        LanguageFactory(
          getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
        ),
      ),
    );
    debugPrint("\t~>\tEE injected;");
  }
}
