import 'languages/JapanLanguageMap.dart';
import 'TableWithStickyHeaderController.dart';
import 'TableWithStickyHeaderModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

class TableWithStickyHeaderComponentConfig implements Configurer {
  //please write sub component configurations here
  Future<void> _preConfig() async {}

  Future<void> config({String? instanceName}) async {
    await _preConfig();

    //Lazy Singleton injection
    //  getIt.registerLazySingleton(
    //    instanceName: instanceName,
    //    () => TableWithStickyHeaderController(
    //      //TableWithStickyHeader(),
    //      WinterLanguageFactory(
    //        getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    //        {"jp": JapanLanguageMap()},
    //      ),
    //      TableWithStickyHeaderModel([], []),
    //    ),
    //  );

    //Factory injection with parameter
    getIt.registerFactoryParam<
      TableWithStickyHeaderController,
      TableWithStickyHeaderModel,
      Null
    >(
      instanceName: instanceName,
      (p1, p2) => TableWithStickyHeaderController(
        //TableWithStickyHeader(),
        WinterLanguageFactory(
          getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
          {"jp": JapanLanguageMap()},
        ),
        p1,
      ),
    );

    await _postConfig();
  }

  //please write the tasks you want to do after config here
  Future<void> _postConfig() async {
    debugPrint("\t~>\tTableWithStickyHeaderComponent injected;");
  }
}
