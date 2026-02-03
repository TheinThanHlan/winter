import 'SayHelloModel.dart';
import 'SayHello.dart';
import 'package:winter/winter.dart';

class SayHelloController implements WinterController {
  final SayHelloModel _model;
  late final SayHello _view;
  final WinterLanguageFactory _lf;
  //final module = getIt<GetIt>(instanceName:);
  SayHelloController(this._lf,this._model){
   //this._view.c=this;
    _view = SayHello(_lf,_model);
  }
  void reset(){}

  WinterView getView(){
    return this._view;
  }

}
