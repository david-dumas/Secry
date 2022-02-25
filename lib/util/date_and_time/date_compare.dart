extension DateOnlyCompare on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isLessThanXSecondsAgo(int seconds) {
    if (millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return false;
    } else {
      return millisecondsSinceEpoch > (DateTime.now().millisecondsSinceEpoch - (seconds * 1000));
    }
  }

  bool isLessThanOneMinuteAgo() {
    if (this.millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return false;
    } else {
      final millisecondsInMinute = 60000;
      return this.millisecondsSinceEpoch > (DateTime.now().millisecondsSinceEpoch - millisecondsInMinute);
    }
  }

  bool isLessThanHourAgo() {
    if (this.millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return false;
    } else {
      final millisecondsInHour = 3600000;
      return this.millisecondsSinceEpoch > (DateTime.now().millisecondsSinceEpoch - millisecondsInHour);
    }
  }

  bool isLessThanDayAgo() {
    if (this.millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch) {
      return false;
    } else {
      final millisecondsInDay = 86400000;
      return this.millisecondsSinceEpoch > (DateTime.now().millisecondsSinceEpoch - millisecondsInDay);
    }
  }
}
