// sqrt((x)² + (y )²) < radius
import 'dart:math' as math;

class Darts {
  int score(double x, double y) {
    final res = math.sqrt(square(x) + square(y));
    if (res > 10) return 0;
    if (res > 5) return 1;
    if (res > 1) return 5;
    return 10;
  }

  double square(double val) => (val * val).abs();
}
