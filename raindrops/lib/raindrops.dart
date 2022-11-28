class Raindrops {
  Map<String, int> rainsMap = {"Pling": 3, "Plang": 5, "Plong": 7};

  String convert(int id) {
    final _result =
        rainsMap.keys.where((key) => id % rainsMap[key]! == 0).join();
    if (_result.isEmpty) return id.toString();
    return _result;
  }
}
