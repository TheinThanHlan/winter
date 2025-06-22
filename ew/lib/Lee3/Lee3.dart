import 'package:flutter/material.dart';
import './Lee3Controller.dart';
import 'package:winter/winter.dart';
import './Desktop.dart';

class Lee3 extends StatelessWidget{
  late final Lee3Controller c;
  Lee3();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Desktop(c);
    });
  }
}
