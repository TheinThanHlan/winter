import 'TableWithFixedColumnTitleModel.dart';
import 'TableWithFixedColumnTitle.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class TableWithFixedColumnTitleController implements WinterController {
  late final TableWithFixedColumnTitleModel? data;
  late final TableWithFixedColumnTitle _view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  TableWithFixedColumnTitleController(
    this._view,
    this.languageFactory, {
    this.data,
  }) {
    this._view.c = this;
  }
  String greet = "Hello from TableWithFixedColumnTitlePage";
  void reset() {}

  Widget getView() {
    return this._view;
  }
}
