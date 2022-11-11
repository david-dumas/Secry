import 'package:secry/util/date_and_time/text_from_date.dart';
import 'package:test/test.dart';

void main() {
  // Returns DateTime.now() as a string
  test('Should return DateTime.now() as a string when millisecondsSinceEpoch is bigger than DateTime.now()', () {
    final date = DateTime.now().add(Duration(seconds: 10));
    final result = date.getTimeAgoTimeIndication();
    expect(result, "date_time_now");
  });

  // Returns DateTime.now() as a string as long as isLessThanXSecondsAgo(10) returns true
  test('Should return DateTime.now as a string when IsLessThanXSecondsAgo(10) returns true', () {
    final date = DateTime.now().subtract(Duration(seconds: 9));
    final result = date.getTimeAgoTimeIndication();
    expect(result, "date_time_now");
  });

  // Returns "date_time_x_seconds_ago" if date is less than a minute ago
  test('Should return the string "59 date_time_x_seconds_ago', () {
    final date = DateTime.now().subtract(Duration(seconds: 59));
    final result = date.getTimeAgoTimeIndication();
    expect(result, "59 date_time_x_seconds_ago");
  });

  // Returns "date_time_X_minutes_ago" if date is less than a hour ago
  test('Should return the string "59 date_time_x_minutes_ago', () {
    final date = DateTime.now().subtract(Duration(minutes: 59));
    final result = date.getTimeAgoTimeIndication();
    expect(result, "59 date_time_x_minutes_ago");
  });

  // Returns "date_time_x_hours_ago" if date is less than a day ago
  test('Should return the string "23 date_time_x_hours_ago', () {
    final date = DateTime.now().subtract(Duration(hours: 23));
    final result = date.getTimeAgoTimeIndication();
    expect(result, "23 date_time_x_hours_ago");
  });

  // Returns date in DateFormat 'dd-MM-yyyy' if date is more than a day ago
  test('Should return the string 12-09-2003', () {
    final date = DateTime(2003, 09, 12);
    final result = date.getTimeAgoTimeIndication();
    expect(result, "12-09-2003");
  });

  // Returns the number of seconds between date given and DateTime.now()
  test('Should return the number of seconds between date given and DateTime.now()', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(seconds: 60)).getNumberOfSecondsAgo();
    expect(result, 60);
  });

  // Returns 0 because DateTime.now is earlier than DateTime given
  test('Should return 0 because DateTime.now in milliseconds is less than date given in Milliseconds', () {
    final date = DateTime.now();
    final result = date.add(Duration(seconds: 60)).getNumberOfSecondsAgo();
    expect(result, 0);
  });

  // Returns the number of minutes between date given and DateTime.now()
  test('Should return the number of minutes between date given and DateTime.now()', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(minutes: 60)).getNumberOfMinutesAgo();
    expect(result, 60);
  });

  // Returns 0 because DateTime.now is earlier than DateTime given
  test('Should return 0 because DateTime.now in milliseconds is less than date given in Milliseconds', () {
    final date = DateTime.now();
    final result = date.add(Duration(minutes: 60)).getNumberOfMinutesAgo();
    expect(result, 0);
  });

  // Returns the number of hours between date given and DateTime.now()
  test('Should return the number of hours between date given and DateTime.now()', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(hours: 24)).getNumberOfHoursAgo();
    expect(result, 24);
  });

  // Returns 0 because DateTime.now is earlier than DateTime given
  test('Should return 0 because DateTime.now in milliseconds is less than date given in Milliseconds', () {
    final date = DateTime.now();
    final result = date.add(Duration(hours: 1)).getNumberOfHoursAgo();
    expect(result, 0);
  });

  // Returns 12-09-2003 as a string if 12-09-2003 is given as a date
  test('Should return 12-09-2003 as a string if 12-09-2003 is given as a date', () {
    final result = DateTime(2003, 09, 12).getShortDateTextFromDateTime();
    expect(result, "12-09-2003");
  });
}