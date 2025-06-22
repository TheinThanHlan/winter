import 'NeController.dart';
import 'Ne.dart';
import 'NeModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

import 'languages/LanguageFactory.dart';

class NeComponentConfig implements Configurer{
 Future<void> config({String?instanceName})async{
  getIt.registerSingleton(instanceName:instanceName,NeController(

    Ne(), LanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"))));
   debugPrint("\t~>\tne injected;");
 }

}
