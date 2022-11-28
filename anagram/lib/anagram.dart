class Anagram {
  // Put your code here

  List<String> findAnagrams(String key, List<String> keys) {
    final _lengthKey = convertStringToSet(key);
    return keys
        .where((element) => convertStringToSet(element).length == _lengthKey)
        .toList();
  }

  Set<String> convertStringToSet(String val) => val.split('').toSet();
}
