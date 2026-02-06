import 'languages/JapanLanguageMap.dart';
import '{{name.pascalCase()}}Controller.dart';
import '{{name.pascalCase()}}Model.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';


class {{name.pascalCase()}}ComponentConfig implements Configurer{

final String? instanceName;
{{name.pascalCase()}}({this.instanceName});

//please write sub component configurations here
Future<void> _preConfig()async{}



 Future<void> config()async{
  await _preConfig();

  //Lazy Singleton injection
  getIt.registerLazySingleton(instanceName:instanceName,(){

  var  lf=WinterLanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp":JapanLanguageMap()},
    );
  var model=  {{name.pascalCase()}}Model();
  var view={{name.pascalCase()}}(lf,model);
  return {{name.pascalCase()}}Controller(
    //{{name.pascalCase()}}(),
    view,lf,model
   ));};
  

  //Factory injection with parameter 
  /*
  getIt.registerFactoryParam<{{name.pascalCase()}}Controller,{{name.pascalCase()}}Model,Null>(instanceName:instanceName,(p1,p2)=>{{name.pascalCase()}}Controller(

    //{{name.pascalCase()}}(), 
   WinterLanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp":JapanLanguageMap()}
    ),
    p1

   ),);

  */

  await _postConfig();
}


//please write the tasks you want to do after config here
Future<void> _postConfig()async{
  debugPrint("\t~>\t{{name}}Component injected;");
}



}
