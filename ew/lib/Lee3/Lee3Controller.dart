import 'Lee3Model.dart';
import 'Lee3.dart';
import 'languages/LanguageFactory.dart';
import 'package:winter/winter.dart';

class Lee3Controller {
  late final Lee3Model? data;
  late final Lee3 view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  Lee3Controller(this.view,this.languageFactory,{this.data}){
   this.view.c=this;
  }
  String greet = "Hello from Lee3Page";
  void reset(){}
}
