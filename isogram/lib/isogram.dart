class Isogram {
  // Put your code here

  bool isIsogram(String val) {
    if (val.isEmpty) return true;
    final _stripped = splitString(val);
    return _stripped.length == _stripped.split('').toSet().length;
  }

  String splitString(String val) => val.toLowerCase().replaceAll(" ", '');
}
