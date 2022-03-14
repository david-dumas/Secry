import 'package:easy_localization/easy_localization.dart';
import 'package:secry/util/date_and_time/date_compare.dart';

extension DateOnlyCompare on DateTime {
  String getTimeAgoTimeIndication() {
    final now = DateTime.now();
    if (this.millisecondsSinceEpoch > now.millisecondsSinceEpoch) {
      return tr('date_time_now');
    } else if (this.isLessThanXSecondsAgo(10)) {
      return tr('date_time_now');
    } else if (this.isLessThanOneMinuteAgo()) {
      return "${this.getNumberOfSecondsAgo()} ${tr('date_time_x_seconds_ago')}";
    } else if (this.isLessThanHourAgo()) {
      return "${this.getNumberOfMinutesAgo()} ${tr('date_time_x_minutes_ago')}";
    } else if (this.isLessThanDayAgo()) {
      return "${this.getNumberOfHoursAgo()} ${tr('date_time_x_hours_ago')}";
    } else {
      return this.getShortDateTextFromDateTime();
    }
  }

  // TODO Test
  int getNumberOfSecondsAgo() {
    if (millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return 0;
    } else {
      return ((DateTime.now().millisecondsSinceEpoch - this.millisecondsSinceEpoch) / 1000).round();
    }
  }

  // TODO Test
  int getNumberOfMinutesAgo() {
    if (millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return 0;
    } else {
      final millisecondsInMinute = 60000;
      return ((DateTime.now().millisecondsSinceEpoch - this.millisecondsSinceEpoch) / millisecondsInMinute).round();
    }
  }

  // TODO Test
  int getNumberOfHoursAgo() {
    if (millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return 0;
    } else {
      final millisecondsInHour = 3600000;
      return ((DateTime.now().millisecondsSinceEpoch - this.millisecondsSinceEpoch) / millisecondsInHour).round();
    }
  }

  // Returns date with format: yyyy-mm-dd
  String getShortDateTextFromDateTime() {
    return DateFormat('dd-MM-yyyy').format(this);
  }
}
