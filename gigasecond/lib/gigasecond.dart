import 'dart:math' as math;

DateTime addGigasecondTo(DateTime moment) =>
    moment.add(Duration(seconds: _convertGigasecondToSeconds()));

int _convertGigasecondToSeconds() => math.pow(10, 9).toInt();
