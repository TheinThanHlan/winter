import 'package:flutter/material.dart';
import './EeController.dart';
import 'package:winter/winter.dart';
import './Desktop.dart';

class Ee extends StatelessWidget{
  late final EeController c;
  Ee();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Desktop(c);
    });
  }
}
