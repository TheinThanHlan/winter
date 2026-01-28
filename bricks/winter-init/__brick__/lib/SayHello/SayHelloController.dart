import 'SayHelloModel.dart';
import 'SayHello.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class SayHelloController implements WinterController {
  late final SayHelloModel? data;
  late final SayHello view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  SayHelloController(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from SayHelloPage";
  void reset(){}

  Widget getView(){
    return this.view;
  }

}
