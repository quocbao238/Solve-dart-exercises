class Allergies {
  final Map<String, int> allergyScore = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };

  bool allergicTo(String allergy, int score) {
    final allergyInList = allergyScore[allergy]!;
    return (score & allergyInList != 0);
  }

  List<String> list(int score) =>
      allergyScore.keys.where((element) => allergicTo(element, score)).toList();
}
