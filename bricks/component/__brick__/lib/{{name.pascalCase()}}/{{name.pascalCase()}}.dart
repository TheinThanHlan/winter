import 'package:flutter/material.dart';
import './{{name.pascalCase()}}Controller.dart';
import 'package:winter/winter.dart';
import './Desktop.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  late final {{name.pascalCase()}}Controller c;
  {{name.pascalCase()}}();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Desktop(c);
    });
  }
}
