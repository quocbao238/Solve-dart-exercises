class Hamming {
  // Put your code here

  int distance(String strandA, String strandB) {
    _checkEqualLength(strandA, strandB);

    var listDifferent = Iterable<int>.generate(strandA.length)
        .where((element) => strandA[element] != strandB[element]);

    return listDifferent.length;
  }

  void _checkEqualLength(String valA, String valB) => valA.length != valB.length
      ? throw ArgumentError('strands must be of equal length')
      : null;
}
