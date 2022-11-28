class ResistorColorDuo {
  // Put your code here

  final _lstColors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int value(List<String> listColors) =>
      int.tryParse(mapValueColor(listColors)) ?? 0;

  //The first 2 bands of a resistor have a simple encoding scheme

  String mapValueColor(List<String> listColor) => listColor
      .take(2)
      .map((color) => _lstColors.indexOf(color).toString())
      .join();
}
