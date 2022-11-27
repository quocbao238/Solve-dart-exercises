// https://projecteuler.net/problem=7

class NthPrime {
  // Put your code here

  int prime(int val) {
    _checkValid(val);

    //init
    List<int> _primeList = [2];
    int number = 3;

    while (_primeList.length < val) {
      if (_checkisPrime(number, _primeList)) _primeList.add(number);
      number++;
    }
    return _primeList[val - 1];
  }

  bool _checkisPrime(int val, List<int> primeList) {
    for (var prime in primeList) {
      if (val % prime == 0) return false;
    }
    return true;
  }

  void _checkValid(int val) {
    if (val == 0) throw ArgumentError('There is no zeroth prime');
  }
}
