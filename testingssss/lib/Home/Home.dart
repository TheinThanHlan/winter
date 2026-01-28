import 'package:flutter/material.dart';
import './HomeController.dart';
import 'package:winter/winter.dart';

class Home extends StatelessWidget {
  late final HomeController c;
  Home();
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(c.languageFactory.getLang("hello")));
  }
}
