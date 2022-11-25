class PhoneNumber {
  // Put your code
  dynamic clean(String phoneNumber) {
    checkHaveLetter(phoneNumber);
    final _digitsOnly = digitsOnly(phoneNumber);
    checkLength(_digitsOnly);
    checkPunctuations(_digitsOnly);

    return _digitsOnly;
  }

  String digitsOnly(String val) {
    var _digitsOnly = val.replaceAll(RegExp('[()-.+ ]'), '');
    if (_digitsOnly.startsWith('1') && _digitsOnly.length == 11) {
      _digitsOnly = _digitsOnly.replaceRange(0, 1, '');
    }

    if (_digitsOnly.startsWith('0')) {
      throw FormatException('area code cannot start with zero');
    }

    if (_digitsOnly.startsWith('1')) {
      throw FormatException('area code cannot start with one');
    }

    final _exchangeCode = _digitsOnly[3];

    if (_exchangeCode.startsWith('0')) {
      throw FormatException('exchange code cannot start with zero');
    }

    if (_exchangeCode.startsWith('1')) {
      throw FormatException('exchange code cannot start with one');
    }

    return _digitsOnly;
  }

  void checkLength(String _digitsOnly) {
    if (_digitsOnly.length < 10) {
      throw FormatException('incorrect number of digits');
    }

    // > 10 beacause we already remove first charactor (1) when convert to digits
    if (_digitsOnly.length == 11) {
      throw FormatException('11 digits must start with 1');
    }

    if (_digitsOnly.length > 11) {
      throw FormatException('more than 11 digits');
    }
  }

  void checkHaveLetter(String val) =>
      RegExp(r'[a-zA-Z]').hasMatch(val.toLowerCase())
          ? throw FormatException('letters not permitted')
          : null;
  void checkPunctuations(String val) => RegExp('[@:!]').hasMatch(val)
      ? throw FormatException('punctuations not permitted')
      : null;
}
