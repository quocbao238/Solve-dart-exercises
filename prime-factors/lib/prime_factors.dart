/*

A Prime Number is:
a whole number above 1 that cannot be made by multiplying other whole numbers

(if we can make it by multiplying other whole numbers it is a Composite Number)
https://www.mathsisfun.com/prime_numbers.html
*/

class PrimeFactors {
  // Put your code here

  List<int> factors(int number) {
    if (number < 2) return [];
    List<int> _result = [];
    for (int i = 2; number >= i; i++) {
      while (isDivisible(number, i)) {
        _result.add(i);
        number = (number / i) as int;
      }
    }
    return _result;
  }

  bool isDivisible(int val, int val2) => val % val2 == 0;
}
