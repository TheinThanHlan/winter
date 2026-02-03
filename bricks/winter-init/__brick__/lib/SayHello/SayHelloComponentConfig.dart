import 'languages/JapanLanguageMap.dart';
import 'SayHelloController.dart';
import 'SayHelloModel.dart';
import 'package:flutter/foundation.dart';
import 'package:winter/winter.dart';


class SayHelloComponentConfig implements Configurer{

//please write sub component configurations here
Future<void> _preConfig()async{}



 Future<void> config({String?instanceName})async{
  await _preConfig();

  //Lazy Singleton injection
  getIt.registerLazySingleton(instanceName:instanceName,()=>SayHelloController(
    //SayHello(),
   WinterLanguageFactory(
    getIt<ValueNotifier<String>>(instanceName: "currentLanguage"),
    {"jp":JapanLanguageMap()},
    ),
    SayHelloModel()
   ));
  

  //Factory injection with parameter 
  /*
  getIt.registerFactoryParam<SayHelloController,SayHelloModel,Null>(instanceName:instanceName,(p1,p2)=>SayHelloController(

    //SayHello(), 
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
  debugPrint("\t~>\tSayHelloComponent injected;");
}



}
