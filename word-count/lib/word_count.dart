class WordCount {
  // Put your code here

  final _regex = RegExp(r"\d+|[a-z]+('[a-z]+)?", caseSensitive: false);
  Map<String, int> countWords(String val) {
    Map<String, int> _result = Map();
    _regex.allMatches(val).forEach((elemnt) => _result.update(
        elemnt.group(0)!.toLowerCase(), (value) => value + 1,
        ifAbsent: () => 1));

    return _result;
  }
}
