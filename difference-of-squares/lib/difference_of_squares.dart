/*

Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

Hence the difference between the square of the sum of the first ten natural numbers 
and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.

*/

class DifferenceOfSquares {
  // Put your code here
  int differenceOfSquares(int val) => squareOfSum(val) - sumOfSquares(val);
  int squareOfSum(int val) => square(list(val).reduce(sum));
  int sumOfSquares(int val) => list(val).map(square).reduce(sum);
  int square(int val) => val * val;
  Iterable<int> list(int val) => Iterable<int>.generate(val);
  int sum(int a, int b) => a + b;
}
