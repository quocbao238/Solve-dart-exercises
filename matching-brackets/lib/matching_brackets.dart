class MatchingBrackets {
  final _regexpBrackets = RegExp(r'\(\)|{}|\[\]');
  // Put your code here
  bool isPaired(String val) {
    var brackets = _removeText(val);
    while (brackets.contains(_regexpBrackets)) {
      brackets = _replaceBrackets(brackets);
    }
    return brackets.isEmpty;
  }

  String _removeText(String val) => val.replaceAll(RegExp(r'[^{}\[\]()]'), '');
  String _replaceBrackets(String val) => val.replaceAll(_regexpBrackets, '');
}
