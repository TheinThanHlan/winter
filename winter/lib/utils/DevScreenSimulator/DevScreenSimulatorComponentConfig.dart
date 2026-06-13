import 'dart:convert';
import 'dart:io';

import 'languages/JapanLanguageMap.dart';
import 'DevScreenSimulatorController.dart';
import 'DevScreenSimulatorModel.dart';
import 'DevScreenSimulator.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

class DevScreenSimulatorComponentConfig implements Configurer {
  final String? instanceName;
  DevScreenSimulatorComponentConfig({this.instanceName});

  //please write sub component configurations here
  Future<void> _preConfig() async {}

  Future<void> config() async {
    await _preConfig();

    var lf = WinterLanguageFactory(
      getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
      {"jp": JapanLanguageMap()},
    );

    //Lazy Singleton injection
    /*
    getIt.registerLazySingleton(instanceName: instanceName, () {
      var model = DevScreenSimulatorModel();
      var view = DevScreenSimulator(lf, model);
      return DevScreenSimulatorController(
        //DevScreenSimulator(),
        view,
        lf,
        model,
      );
    });
    */
    //Factory injection with parameter
    getIt.registerFactoryParam<
      DevScreenSimulatorController,
      DevScreenSimulatorModel,
      Null
    >(
      instanceName: instanceName,
      (p1, p2) =>
          DevScreenSimulatorController(DevScreenSimulator(lf, p1), lf, p1),
    );
    await _postConfig();
  }

  //please write the tasks you want to do after config here
  Future<void> _postConfig() async {
    debugPrint("\t~>\tDevScreenSimulatorComponent injected;");
  }
}
