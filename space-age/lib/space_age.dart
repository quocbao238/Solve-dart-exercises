class SpaceAge {
  // Put your code here
  Map<String, double> periods = {
    'Mercury': 0.2408467,
    'Venus': 0.61519726,
    'Earth': 1.0, // 31557600 seconds
    'Mars': 1.8808158,
    'Jupiter': 11.862615,
    'Saturn': 29.447498,
    'Uranus': 84.016846,
    'Neptune': 164.79132,
  };

  // Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
  int k = 31557600;

  double age({required String planet, required double seconds}) =>
      double.parse((seconds / k / periods[planet]!).toStringAsFixed(2));
}
