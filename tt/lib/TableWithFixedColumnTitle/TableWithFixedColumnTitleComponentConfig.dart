import 'languages/JapanLanguageMap.dart';
import 'TableWithFixedColumnTitleController.dart';
import 'TableWithFixedColumnTitle.dart';
import 'TableWithFixedColumnTitleModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';


class TableWithFixedColumnTitleComponentConfig implements Configurer{
 Future<void> config({String?instanceName})async{
  getIt.registerSingleton(instanceName:instanceName,TableWithFixedColumnTitleController(

    TableWithFixedColumnTitle(), LanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp":JapanLanguageMap()}
    )));
   debugPrint("\t~>\tTableWithFixedColumnTitle injected;");
 }

}
