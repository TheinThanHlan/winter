import 'package:ew/Lee3/languages/Myanmar.dart';
import 'package:flutter/foundation.dart';

import "English.dart";
import 'package:winter/winter.dart';

class LanguageFactory {
  Map<String, Language> languages = {"en": English(), "my": Myanmar()};
  ValueNotifier<String> _currentLanguage;
  LanguageFactory(this._currentLanguage);

  String getLang(int index) {
    print(_currentLanguage);
    return (languages[this._currentLanguage.value] ?? languages["en"])!
        .content[index];
  }
}
