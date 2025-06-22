import 'package:flutter/material.dart';
import './EeController.dart';
import 'package:winter/winter.dart';

class Desktop extends StatelessWidget {
  late final  EeController c;
  Desktop(this.c);
  Widget build(BuildContext context) {
    return Text(c.greet);
  }

//  State<StatefulWidget> createState() {
//    return _Desktop();
//  }
}

//class _Desktop extends State<Desktop> {
//  @override
//  Widget build(BuildContext context) {
//    return Text(widget.controller.greet);
//  }
//}
