final regExpvowelChar = RegExp(r'^([aeiou]|yt|xr)');

String translate(String val) {
  val = val.toLowerCase();

  final listWords = val.split(' ');

  //a whole phrase
  return listWords.map((e) => translateWord(e)).toList().join(" ");
}

String translateWord(String val) {
  
   //Aded to words that start with vowels'
  // This rule will be true for the current test case
  // If want to be more precise you can check with startsWith
  if (isVowel(val)) return val + 'ay';

  // some letter clusters are treated like a single consonant

  if (startWithThreeLetterCluster(val)) {
    return val.substring(3, val.length) + val.substring(0, 3) + 'ay';
  }

  if (startWitTwoLetterCluster(val)) {
    return val.substring(2) + val.substring(0, 2) + 'ay';
  }

  //word beginning with qu and a preceding consonant
  String _afterConsonant = val.substring(1, 3);
  if (_afterConsonant == 'qu') {
    return val.substring(3, val.length) + val.substring(0, 3) + 'ay';
  }

  //first letter and ay are moved to the end of words that start with consonants
  if (!isVowel(val)) {
    return val.substring(1, val.length) + val[0] + 'ay';
  }

  while (!isVowel(val[0])) {
    val += val[0];
    val = val.substring(1, val.length);
  }

  return val + 'ay';
}

bool isVowel(String val) => regExpvowelChar.hasMatch(val);
// some letter clusters are treated like a single consonant
bool startWithThreeLetterCluster(String val) =>
    val.length > 2 && ["thr", "sch"].contains(val.substring(0, 3));

bool startWitTwoLetterCluster(String val) =>
    ["ch", "qu", "th", "ch", "rh"].contains(val.substring(0, 2));
