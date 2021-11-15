import 'package:meta/meta.dart';

void main() {
  print('[Converts DateTime to ISO format]');
  print(DateUtils.formatISOTime(DateTime.now()));
  print('---');
  print('[Get ISO time String from DateTime]');
  print(DateUtils.getCurrentISOTimeString(DateTime.now()));
}

class DateUtils {
  
  static String formatISOTime(DateTime date) {
    Duration duration = date.timeZoneOffset;
    String _date = date.toIso8601String();
    String _hour = getHour(duration, false);
    String _min = getMinutes(duration, false);
    return duration.isNegative
        ? ("Time: $_date | TimeZone : -$_hour:$_min")
        : ("Time: $_date | TimeZone : +$_hour:$_min");

    // Example Output: "Time: 2021-11-15T15:03:30.458 | TimeZone : --3:00"
  }

  static String getCurrentISOTimeString(DateTime dateTime) {
    DateTime  date = dateTime ?? DateTime.now();
    
    //Time zone may be null in dateTime hence get timezone by  datetime
    Duration duration = DateTime.now().timeZoneOffset;
    String _date = date.toIso8601String();
    String _hour = getHour(duration, false);
    String _hourAbs = getHour(duration, true);
    String _min = getMinutes(duration, false);
    String _minAbs = getMinutes(duration, true);
    return duration.isNegative
        ? ("Time: $_date | TimeZone : -$_hourAbs:$_minAbs")
        : ("Time: $_date | TimeZone : +$_hour:$_min");

    // Example Output: "Time: 2021-11-15T15:04:14.783 | TimeZone : -03:00"
  }
  
  static getHour(duration, isAbsolute) {
    return isAbsolute 
        ? duration.inHours.abs().toString().padLeft(2, '0') 
        : duration.inHours.toString().padLeft(2, '0');
  }
  
  static getMinutes(duration, isAbsolute) {
    var _min = duration.inMinutes;
    var _hour = duration.inHours;
    return isAbsolute ? 
        (_min.abs() - (_hour.abs() * 60)).toString().padLeft(2, '0') 
      : (_min - (_hour * 60)).toString().padLeft(2, '0');
  }
}
