import 'package:flutter/material.dart';
import './SayHelloController.dart';
import 'package:winter/winter.dart';

class SayHello extends StatelessWidget {
  late final SayHelloController c;
  SayHello();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          c.languageFactory.getLang("hello").toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
