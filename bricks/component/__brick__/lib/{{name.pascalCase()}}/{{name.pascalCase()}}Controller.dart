import '{{name.pascalCase()}}Model.dart';
import '{{name.pascalCase()}}.dart';
import 'languages/LanguageFactory.dart';
import 'package:winter/winter.dart';

class {{name.pascalCase()}}Controller implements Controller {
  late final {{name.pascalCase()}}Model? data;
  late final {{name.pascalCase()}} view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  {{name.pascalCase()}}Controller(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from {{name.pascalCase()}}Page";
  void reset(){}

  View getView(){
    return this.view;
  }

}
