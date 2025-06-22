import 'NeModel.dart';
import 'Ne.dart';
import 'languages/LanguageFactory.dart';
import 'package:winter/winter.dart';

class NeController {
  late final NeModel? data;
  late final Ne view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  NeController(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from NePage";
  void reset(){}
}
