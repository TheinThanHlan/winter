import 'package:winter/exceptions/WinterException.dart';

//implements this interface on lang code enums
abstract interface class WinterLangCodeEnum implements Enum {}

/// Language mapping class
class WinterLanguageMapping<T extends WinterLangCodeEnum> {
  /// List of supporting lang code.
  /// [en, my, jp, sg]
  /// index 0 will be the default language and fall back language
  final List<T> _supportingLanguages;

  /// "cook":{"en":"cook","mm":"ချက်"}
  Map<String, Map<T, String>> _langMap = {};
  WinterLanguageMapping(this._supportingLanguages) {
    /// throw the exception if the suppoerting languages is empty
    if (_supportingLanguages.isEmpty) {
      throw WinterLanguageSupportException(
        "wls1",
        "Supporting languages shoud at least 1",
      );
    }
  }
  void addLangMap(T langCode, String key, String value) {
    if (_langMap[key]?[langCode] != null) {
      throw WinterLanguageSupportException(
        "wls2",
        "The valuse for key : \"$key\" and language : $langCode cannot reassign",
      );
    }
    if (_langMap[key] == null) {
      _langMap[key] = {};
    }
    _langMap[key]?[langCode] = value;
  }

  /// This function will return the mapping of the key and language
  /// if the desire mapping does not exist this will return _supportingLanguages[0] as fall back
  /// if _supportingLanguages[0] is null this will throw error
  String getMapping(T langCode, String key) {
    if (_langMap[key]?[langCode] != null) {
      return _langMap[key]![langCode]!;
    } else {
      if (_langMap[key]?[_supportingLanguages[0]] != null) {
        return _langMap[key]![_supportingLanguages[0]]!;
      } else {
        throw WinterLanguageSupportException(
          "wls3",
          "value fall back language ${_supportingLanguages[0]} for key \"$key\" cannot null.",
        );
      }
    }
  }
}
