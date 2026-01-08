import 'package:flutter/material.dart';
import 'ApplicationConfig.dart';
import 'package:winter/winter.dart';

void main() {
  ApplicationConfig().config().then((a) {
    runApp();
  });
}
