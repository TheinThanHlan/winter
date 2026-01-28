import 'SayHelloModel.dart';
import 'SayHello.dart';
import 'package:winter/winter.dart';
import 'package:flutter/widgets.dart';

class SayHelloController implements WinterController {
  late final SayHelloModel? data;
  late final SayHello view;
  late final LanguageFactory languageFactory;
  //final module = getIt<GetIt>(instanceName:);
  SayHelloController(this._view, this.languageFactory, {this.data}) {
    this._view.c = this;
  }
  void reset() {}

  Widget getView() {
    return this._view;
  }
}
