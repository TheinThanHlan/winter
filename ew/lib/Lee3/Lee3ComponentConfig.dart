import 'Lee3Controller.dart';
import 'Lee3.dart';
import 'Lee3Model.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

import 'languages/LanguageFactory.dart';

class Lee3ComponentConfig implements Configurer {
  Future<void> config({String? instanceName}) async {
    getIt.registerFactory(
      instanceName: instanceName,
      () => Lee3Controller(
        Lee3(),
        LanguageFactory(
          getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
        ),
      ),
    );
    debugPrint("\t~>\tlee3 injected;");
  }
}
