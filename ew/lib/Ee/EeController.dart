import 'EeModel.dart';
import 'Ee.dart';
import 'languages/LanguageFactory.dart';
import 'package:winter/winter.dart';

class EeController {
  late final EeModel? data;
  late final Ee view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  EeController(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from EePage";
  void reset(){}
}
