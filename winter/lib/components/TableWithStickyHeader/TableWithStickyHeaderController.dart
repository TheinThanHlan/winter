import 'TableWithStickyHeaderModel.dart';
import 'TableWithStickyHeader.dart';
import 'package:winter/winter.dart';

class TableWithStickyHeaderController implements WinterController {
  final TableWithStickyHeaderModel _model;
  late final TableWithStickyHeader _view;
  final WinterLanguageFactory _lf;
  //final module = getIt<GetIt>(instanceName:);
  TableWithStickyHeaderController(this._lf,this._model){
   //this._view.c=this;
    _view = TableWithStickyHeader(_lf,_model);
  }
  void reset(){}

  WinterView getView(){
    return this._view;
  }

}
