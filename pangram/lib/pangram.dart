class Pangram {
  // Put your code here

  bool isPangram(String val) {
    return _toLowerCaseANdRemoveSpaceText(val)
        .split('')
        .toSet()
        .contains(_generateAlphabet);
  }

  String _toLowerCaseANdRemoveSpaceText(String val) =>
      val.toLowerCase().replaceAll(' ', '');
  Set<String> _generateAlphabet() => List<String>.generate(26,
          (int generator) => String.fromCharCode('a'.codeUnitAt(0) + generator))
      .toSet();
}
