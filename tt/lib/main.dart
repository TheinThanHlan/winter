import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tt/SayHello/SayHelloController.dart';
import 'ApplicationConfig.dart';
import 'package:winter/winter.dart';

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
