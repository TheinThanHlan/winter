import '{{name.pascalCase()}}Model.dart';
import '{{name.pascalCase()}}.dart';
import 'package:winter/winter.dart';

class {{name.pascalCase()}}Controller implements WinterController {
  final {{name.pascalCase()}}Model _model;
  late final {{name.pascalCase()}} _view;
  final WinterLanguageFactory _lf;
  //final module = getIt<GetIt>(instanceName:);
  {{name.pascalCase()}}Controller(this._lf,this._model){
   //this._view.c=this;
    _view = {{name.pascalCase()}}(_lf,_model);
  }
  void reset(){}

  WinterView getView(){
    return this._view;
  }

}
