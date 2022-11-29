String translate(String val) {
  final listWords = val.toLowerCase().split(' ');
  //a whole phrase
  return listWords.map((e) => translateWord(e)).toList().join(" ");
}

String translateWord(String val) {
  final _lastChar = 'ay';
  if (isVowel(val)) return val + _lastChar;

  if (startWithThreeLetterCluster(val) || checkFollowed(val))
    return val.substring(3, val.length) + val.substring(0, 3) + _lastChar;

  if (startWitTwoLetterCluster(val))
    return val.substring(2) + val.substring(0, 2) + _lastChar;

  return val.substring(1, val.length) + val[0] + _lastChar;
}

final regExpvowelChar = RegExp(r'^([aeiou]|yt|xr)');

bool isVowel(String val) => regExpvowelChar.hasMatch(val);

//starts with a consonant sound followed by "qu"
bool checkFollowed(String val) => val.length > 2 && val.substring(1, 3) == 'qu';

bool startWithThreeLetterCluster(String val) =>
    val.length > 2 && ["thr", "sch"].contains(val.substring(0, 3));

bool startWitTwoLetterCluster(String val) =>
    ["ch", "qu", "th", "ch", "rh"].contains(val.substring(0, 2));
