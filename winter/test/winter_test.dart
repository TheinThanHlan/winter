import "../lib/bean/WinterLanguageMappinig.dart";

enum SupportingLanguages implements WinterLangCodeEnum { en, my }

void main() {
  var x = WinterLanguageMapping<SupportingLanguages>(
    SupportingLanguages.values,
  );
  x.addLangMap(SupportingLanguages.en, "haha", "haha");
  x.addLangMap(SupportingLanguages.my, "haha", "ဟဟ");
}
