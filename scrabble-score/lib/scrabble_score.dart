// Put your code here

Map<List<String>, int> letterScore = {
  ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']: 1,
  ['D', 'G']: 2,
  ['B', 'C', 'M', 'P']: 3,
  ['F', 'H', 'V', 'W', 'Y']: 4,
  ['K']: 5,
  ['J', 'X']: 8,
  ['Q', 'Z']: 8,
};

// /*
// [Done] exited with code=0 in 1.28 seconds
// */

int score(String text) {
  if (text.isEmpty) return 0;
  var score = 0;
  final _upperText = text.toUpperCase();
  final _arrayChar = _upperText.split('');

  for (var i = 0; i < _arrayChar.length; i++) {
    final _letter = _arrayChar[i];

    letterScore.forEach((key, value) {
      if (key.contains(_letter)) {
        score += value;
        return;
      }
    });
  }
  return score;
}
