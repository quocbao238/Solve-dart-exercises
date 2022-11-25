class Leap {
  /*
  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400

    leapYear is year divisible 400
    leapYear is year divisible 4 and not divisible 100
  */

  bool leapYear(int year) {
    if (year % 400 == 0) return true;
    if (year % 4 == 0 && year % 100 != 0) return true;
    return false;
  }
}
