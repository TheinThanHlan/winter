import "English.dart";
import 'package:winter/winter.dart';
import 'package:flutter/foundation.dart';

class LanguageFactory {
  Map<String, Language> languages = {"en": English()};
  ValueNotifier<String> _currentLanguage;
  LanguageFactory(this._currentLanguage);

  String getLang(int index) {
    return (languages[this._currentLanguage] ?? languages["en"])!
        .content[index];
  }
}
