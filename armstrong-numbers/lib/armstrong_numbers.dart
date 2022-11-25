class ArmstrongNumbers {
  ArmstrongNumbers();

  bool isArmstrongNumber(String textNumber) {
    //Zero is an Armstrong number
    final int _number = convertStringToNumber(textNumber);
    if (_number == 0) return true;

    return textNumber.split('').fold(
            0,
            (_total, _char) => combine(
                _total,
                multiplication(
                    convertStringToNumber(_char), textNumber.length))) ==
        _number;
  }
  
  int combine(int a, int b) => sum(a, b);
  int multiplication(int a, int b) => a * b;
  int sum(int a, int b) => a + b;
  int convertStringToNumber(String val) => int.parse(val);
}
