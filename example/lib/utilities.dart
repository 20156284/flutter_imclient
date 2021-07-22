import 'package:flustars/flustars.dart';
// import 'package:intl/intl.dart';

class Utilities {
  static String formatTime(int timestamp) {
    var now = new DateTime.now();
    var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp*1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 || diff.inSeconds > 0 && diff.inMinutes == 0 || diff.inMinutes > 0 && diff.inHours == 0 || diff.inHours > 0 && diff.inDays == 0) {
      // var format = new DateFormat('HH:mm');
      // time = format.format(date);
      time = DateUtil.formatDate(date,format: DateFormats.h_m);
      // time ="";
    } else {

      if (diff.inDays == 1) {
        time = '昨天';
      } else {
        // var format = new DateFormat('MM-dd');
        // time = format.format(date);
        time = DateUtil.formatDate(date,format: DateFormats.mo_d);
        // time ="";
      }
    }

    return time;
  }
}