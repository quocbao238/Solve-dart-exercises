/*

Instructions
The diamond kata takes as its input a letter, and outputs it in a diamond shape. Given a letter, it prints a diamond starting with 'A', with the supplied letter at the widest point.

Requirements
The first row contains one 'A'.
The last row contains one 'A'.
All rows, except the first and last, have exactly two identical letters.
All rows have as many trailing spaces as leading spaces. (This might be 0).
The diamond is horizontally symmetric.
The diamond is vertically symmetric.
The diamond has a square shape (width equals height).
The letters form a diamond shape.
The top half has the letters in ascending order.
The bottom half has the letters in descending order.
The four corners (containing the spaces) are triangles.

*/

class Diamond {
  final List<String> lstAlphabet = List<String>.generate(26,
      (int generator) => String.fromCharCode('A'.codeUnitAt(0) + generator));
  //[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z]

  List<String> rows(String val) {
    // Expample val =  'E'
    int _indexOfAlphabet = indexOfAlphabet(lstAlphabet, val);
    // ->  _indexOfAlphabet = 5;
    Iterable<String> lstAphabetTake =
        generateAlphabetTake(lstAlphabet, _indexOfAlphabet);
    // ->  lstAphabetTake = (A,B,C,D,E)

    final res =
        lstAphabetTake.map((e) => generatorText(e, _indexOfAlphabet)).toList();
    /* 
    
    => 1/2 Diamond
            A    
          B   B   
        C       C  
      D           D 
    E               E
    
    
      reversed res then remove first
    */

    return res + res.reversed.skip(1).toList();
  }

  String generatorText(String char, int _indexOfAlphabet) {
    /// Expample char = 'D' in case val = 'D'

    int columnIndex = lstAlphabet.indexOf(char) + 1;

    /*
     char = 'D'
     indexColum -> 4
    _indexOfAlphabet = 5;

     char =  char.padRight(indexColum) -> 'D***'
     char =  char.padLeft(_indexOfAlphabet) -> '*D***'
    
      Note "*" is treated as a space
    */

    final _leftText = char.padRight(columnIndex).padLeft(_indexOfAlphabet);

    /*
      rightText is reversed left text & remove firstChar

      Ex:
      _leftText = '*D***'
      _rightText = _leftText reversed -> '***D*'
      removeFirstChar -> '**D*'

      =>> _leftText + _rightText = '*D*****D*'
    */
    final _rightText =
        String.fromCharCodes(_leftText.codeUnits.reversed.skip(1));

    return _leftText + _rightText;
  }

  Iterable<String> generateAlphabetTake(List<String> lstAlphabet, int index) =>
      lstAlphabet.take(index);
  int indexOfAlphabet(List<String> lstAlphabet, String val) =>
      lstAlphabet.indexOf(val) + 1;
}
