import 'package:ew/Lee3/all.dart';
import 'package:ew/Ne/all.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:winter/winter.dart';

void main() async {
  getIt.registerSingleton(
    ValueNotifier<String>("my"),
    instanceName: "currentLanguage",
  );
  await Lee3ComponentConfig().config();
  await NeComponentConfig().config();
  runApp(
    MaterialApp(
      home: ValueListenableBuilder(
        valueListenable: getIt<ValueNotifier<String>>(
          instanceName: "currentLanguage",
        ),
        builder: (context, widget, value) {
          return Scaffold(body: getIt<NeController>().view);
        },
      ),
    ),
  );
}
