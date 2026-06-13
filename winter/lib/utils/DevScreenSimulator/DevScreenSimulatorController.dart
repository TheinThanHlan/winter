import 'DevScreenSimulatorModel.dart';
import 'DevScreenSimulator.dart';
import 'package:winter/winter.dart';

class DevScreenSimulatorController implements WinterController {
  final DevScreenSimulatorModel _model;
  final DevScreenSimulator _view;
  final WinterLanguageFactory _lf;
  //final module = getIt<GetIt>(instanceName:);
  DevScreenSimulatorController(this._view,this._lf,this._model);
   //this._view.c=this;
  void reset(){}

  WinterView getView(){
    return this._view;
  }

}
