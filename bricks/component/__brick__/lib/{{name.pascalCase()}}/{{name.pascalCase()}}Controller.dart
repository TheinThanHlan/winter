import '{{name.pascalCase()}}Model.dart';
import '{{name.pascalCase()}}.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class {{name.pascalCase()}}Controller implements WinterController {
  late final {{name.pascalCase()}}Model? data;
  late final {{name.pascalCase()}} _view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  {{name.pascalCase()}}Controller(this.view,this.languageFactory,{this.data}){
   this._view.c=this;
  }
  String greet = "Hello from {{name.pascalCase()}}Page";
  void reset(){}

  Widget getView(){
    return this._view;
  }

}
