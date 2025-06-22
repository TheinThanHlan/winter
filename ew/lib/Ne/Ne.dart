import 'package:flutter/material.dart';
import './NeController.dart';
import 'package:winter/winter.dart';
import './Desktop.dart';

class Ne extends StatelessWidget{
  late final NeController c;
  Ne();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Desktop(c);
    });
  }
}
