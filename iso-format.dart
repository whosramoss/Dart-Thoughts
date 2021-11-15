
import 'package:meta/meta.dart';

void main() {
  print('Converts DateTime to ISO format');
  print(DateUtils.formatISOTime(DateTime.now()));
  print('---');
  print('Get ISO time String from DateTime');
  print(DateUtils.getCurrentISOTimeString());
}

class DateUtils {
 
  static String formatISOTime(DateTime date) {
    var duration = date.timeZoneOffset;
    var _date = date.toIso8601String();
    var _hour = duration.inHours.toString().padLeft(2, '0');
    var _min = (duration.inMinutes - (duration.inHours * 60)).toString().padLeft(2, '0');
    return duration.isNegative ? (_date + "-$_hour:$_min") : (_date + "+$_hour:$_min")
     ///Example Output: 2020-09-16T20:41:09.331+05:30
  }

  static String getCurrentISOTimeString({DateTime dateTime}) {
    var date = dateTime ?? DateTime.now();
    //Time zone may be null in dateTime hence get timezone by  datetime
    var duration = DateTime.now().timeZoneOffset;
    var _date = date.toIso8601String();
    var _hour = duration.inHours.toString().padLeft(2, '0');
    var _hourAbs = duration.inHours.abs().toString().padLeft(2, '0');
    var _min = (duration.inMinutes - (duration.inHours * 60)).toString().padLeft(2, '0');
    var _minAbs = (duration.inMinutes.abs()  - (duration.inHours.abs()  * 60)).toString().padLeft(2, '0');
    return duration.isNegative ?(_date + "-$_hourAbs:$_minAbs"): (_date + "+$_hour:$_min")
      /// Example Output: 2020-09-16T20:42:38.629+05:30
  }
  
}
