import 'package:flutter/material.dart';
import './Lee3Controller.dart';
import 'package:winter/winter.dart';

class Desktop extends StatelessWidget {
  late final Lee3Controller c;
  Desktop(this.c);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(c.languageFactory.getLang(0)),
        ElevatedButton(
          child: Text("click"),
          onPressed: () {
            getIt<ValueNotifier<String>>(
              instanceName: "currentLanguage",
            ).value = "en";
          },
        ),
      ],
    );
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
