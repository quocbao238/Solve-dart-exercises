String reverse(String val) {
  if (val.isEmpty) return '';

  return val.split('').reversed.join();
}
