import '{{name.pascalCase()}}Model.dart';
import '{{name.pascalCase()}}.dart';
import 'package:winter/winter.dart';

class {{name.pascalCase()}}Controller implements WinterController {
  final {{name.pascalCase()}}Model _model;
  final {{name.pascalCase()}} _view;
  final WinterLanguageFactory _lf;
  //final module = getIt<GetIt>(instanceName:);
  {{name.pascalCase()}}Controller(this._view,this._lf,this._model);
   //this._view.c=this;
  void reset(){}

  WinterView getView(){
    return this._view;
  }

}
