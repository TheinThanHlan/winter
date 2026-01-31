import 'package:winter/winter.dart';
import 'package:flutter/foundation.dart';

class WinterLanguageFactory {
  Map<String, WinterLanguageMapper> _languages;
  ValueNotifier<String> _currentLanguage;
  WinterLanguageFactory(this._currentLanguage, this._languages);

  String getLang(String _key) {
    if (_languages[this._currentLanguage.value] != null) {
      return _languages[this._currentLanguage.value]!.content(_key) ?? _key;
    }
    return _key;
  }
}
