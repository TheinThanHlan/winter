import 'package:flutter/material.dart';
import 'ApplicationConfig.dart';
import 'package:winter/winter.dart';
import "./Home/HomeController.dart";

void main() {
  ApplicationConfig().config().then((a) {
    runApp(MaterialApp(home: getIt<HomeController>().getView()));
  });
}
