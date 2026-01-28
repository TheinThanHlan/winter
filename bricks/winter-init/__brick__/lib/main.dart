import 'package:flutter/material.dart';
import 'ApplicationConfig.dart';
import 'package:winter/winter.dart';
import './SayHello/all.dart';

void main() {
  ApplicationConfig().config().then((a) {
    runApp(
      MaterialApp(
        home: ValueListenableBuilder(
          valueListenable: getIt<ValueNotifier<String>>(
            instanceName: "currentLanguage",
          ),
          builder: (context, _, _) {
            return getIt<SayHelloController>().getView();
          },
        ),
      ),
    );
  });
}
