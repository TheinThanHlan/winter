import 'package:flutter/material.dart';
import 'package:winter/winter.dart';
import "{{name.pascalCase()}}Model.dart";

class {{name.pascalCase()}} extends StatelessWidget implements WinterView {
  //late final {{name.pascalCase()}}Controller c;
  final WinterLanguageFactory _lf;
  final {{name.pascalCase()}}Model _model;
  {{name.pascalCase()}}(this._lf,this._model);
  @override
  Widget build(BuildContext context) {
    //    return LayoutBuilder(builder: (context, constraints) {
    //      return Desktop(c);
    //    });
    return Container();
  }
}
