class BeerSong {
  // Put your code here

  List<String> recite(int bottles, int consumed) {
    List<String> lyrics = [];
    for (int index = 0; index < consumed; index++) {
      if (_lyricsHaveData(lyrics)) lyrics.add('');
      lyrics.add(_lineOne(bottles));
      // Second verse
      lyrics.add(_lineTwo(bottles));
      bottles--;
    }

    return lyrics;
  }

  String _lineOne(int val) =>
      '${val == 0 ? 'No more' : val} bottles of beer on the wall, ${val == 0 ? 'no more' : val} bottles of beer.';
  String _lineTwo(int val) =>
      '${val == 0 ? 'Go to the store and buy some more' : 'Take one down and pass it around'}, ${val == 0 ? '99' : (val == 1 ? 'no more' : val - 1)} bottles of beer on the wall.';

  bool _lyricsHaveData(List<String> lyrics) => lyrics.isNotEmpty;
}
