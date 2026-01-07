///Exception class for winter lib
class WinterException implements Exception {
  final String message;
  final String code;

  const WinterException(this.code, this.message);

  @override
  String toString() => "Error Code :$code , Message : $message";
}

///Exception class for WinterLanguageSupportException
class WinterLanguageSupportException extends WinterException {
  const WinterLanguageSupportException(super.code, super.message);
}
