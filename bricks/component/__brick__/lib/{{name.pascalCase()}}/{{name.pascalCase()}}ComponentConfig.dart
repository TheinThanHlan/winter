import 'languages/JapanLanguageMap.dart';
import '{{name.pascalCase()}}Controller.dart';
import '{{name.pascalCase()}}.dart';
import '{{name.pascalCase()}}Model.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';

import 'languages/LanguageFactory.dart';

class {{name.pascalCase()}}ComponentConfig implements Configurer{
 Future<void> config({String?instanceName})async{
  getIt.registerSingleton(instanceName:instanceName,{{name.pascalCase()}}Controller(

    {{name.pascalCase()}}(), LanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp",JapanLanguageMap()}
    )));
   debugPrint("\t~>\t{{name}} injected;");
 }

}
