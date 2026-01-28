import 'TableWithFixedHeadingModel.dart';
import 'TableWithFixedHeading.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class TableWithFixedHeadingController implements WinterController {
  late final TableWithFixedHeadingModel? data;
  late final TableWithFixedHeading _view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  TableWithFixedHeadingController(this._view,this.languageFactory,{this.data}){
   this._view.c=this;
  }
  void reset(){}

  Widget getView(){
    return this._view;
  }

}
