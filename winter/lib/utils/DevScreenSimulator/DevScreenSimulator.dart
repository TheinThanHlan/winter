import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:winter/winter.dart';
import "DevScreenSimulatorModel.dart";

class DevScreenSimulator extends StatelessWidget implements WinterView {
  //late final DevScreenSimulatorController c;
  final WinterLanguageFactory _lf;
  final DevScreenSimulatorModel _model;
  DevScreenSimulator(this._lf, this._model);
  @override
  Widget build(BuildContext context) {
    //    return LayoutBuilder(builder: (context, constraints) {
    //      return Desktop(c);
    //    });\
    _model.getCurrentScreenPPI();
    return Center(
      child: Directionality(
        textDirection: TextDirection.ltr,

        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(21),
              child: SizedBox.fromSize(
                size: _model.calculateTargetResolution(),
                child: _model.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
