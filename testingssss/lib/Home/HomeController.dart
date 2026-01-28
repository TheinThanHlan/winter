import 'HomeModel.dart';
import 'Home.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class HomeController implements WinterController {
  late final HomeModel? data;
  late final Home view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  HomeController(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from HomePage";
  void reset(){}

  Widget getView(){
    return this.view;
  }

}
