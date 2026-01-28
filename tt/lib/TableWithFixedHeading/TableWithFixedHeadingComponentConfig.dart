import 'languages/JapanLanguageMap.dart';
import 'TableWithFixedHeadingController.dart';
import 'TableWithFixedHeading.dart';
import 'TableWithFixedHeadingModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';


class TableWithFixedHeadingComponentConfig implements Configurer{
 Future<void> config({String?instanceName})async{
  getIt.registerSingleton(instanceName:instanceName,TableWithFixedHeadingController(

    TableWithFixedHeading(), LanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp":JapanLanguageMap()}
    )));
   debugPrint("\t~>\tTableWithFixedHeading injected;");
 }

}
