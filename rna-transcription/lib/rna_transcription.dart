class RnaTranscription {
  // Put your code here

  String toRna(String val) =>
      val.split('').map((e) => DNAtoRNA[e] ?? e).join('');
}

final Map<String, String> DNAtoRNA = {"G": "C", "C": "G", "T": "A", "A": "U"};
