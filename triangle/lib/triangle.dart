class Triangle {
  // Put your code here

  bool equilateral(double a, double b, double c) =>
      _isTriangle(a, b, c) && _isEquilateralTriangle(a, b, c);

  bool isosceles(double a, double b, double c) =>
      _isTriangle(a, b, c) && _isIsoscelesTriangle(a, b, c);

  bool scalene(double a, double b, double c) =>
      _isTriangle(a, b, c) && {a, b, c}.length == 3;

  bool _isEquilateralTriangle(double a, double b, double c) =>
      {a, b, c}.length == 1;

  bool _isIsoscelesTriangle(double a, double b, double c) =>
      {a, b, c}.length == 2;

  bool _isTriangle(double a, double b, double c) {
    if ({a, b, c}.contains(0.0)) return false;
    if (a + b >= c || b + c >= a || a + c >= b) return true;
    return false;
  }
}
