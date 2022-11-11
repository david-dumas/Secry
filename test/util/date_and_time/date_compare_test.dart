import 'package:secry/util/date_and_time/date_compare.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Return true if Date given to DateTime object is at the same day as the other date given to another DateTime object
  test('Should return true if isSameDay returns true for the comparison between 2003-10-11 and 2003-10-11', () {
    final result = DateTime(2003, 11, 10).isSameDay(DateTime(2003, 11, 10));
    expect(result, true);
  });

  // Return false if Date given to DateTime object is not at the same day as the other date given to another DateTime object
  test('Should return false if isSameDay returns false for the comparison between 2003-10-11 and 2003-10-11', () {
    final result = DateTime(2003, 11, 10).isSameDay(DateTime(2003, 10, 10));
    expect(result, false);
  });

  // Return true if given time is less than x seconds ago
  test('Should return true if given time is less than x seconds ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(seconds: 19)).isLessThanXSecondsAgo(20);
    expect(result, true);
  });

  // Return false if given time is more than x seconds ago
  test('Should return true if given time is less than x seconds ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(seconds: 20)).isLessThanXSecondsAgo(19);
    expect(result, false);
  });

  // Return true if given time is less than an minute ago
  test('Should return true if given time is less than an minute ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(seconds: 59)).isLessThanOneMinuteAgo();
    expect(result, true);
  });

  // Return false if given time is more than an minute ago
  test('Should return false if given time is more than an minute ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(seconds: 61)).isLessThanOneMinuteAgo();
    expect(result, false);
  });

  // Return true if given time is less than one hour ago
  test('Should return true if given time is less than an hour ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(minutes: 59)).isLessThanHourAgo();
    expect(result, true);
  });

  // Return false if given time is more than one hour ago
  test('Should return false if given time is more than an hour ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(minutes: 61)).isLessThanHourAgo();
    expect(result, false);
  });

  // Return true if given time is less than an day ago
  test('Shouold return true if given time is less than an day ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(hours: 23, minutes: 59)).isLessThanDayAgo();
    expect(result, true);
  });

  // Return false if given time is more than an day ago
  test('Shouold return true if given time is less than an day ago', () {
    final date = DateTime.now();
    final result = date.subtract(Duration(hours: 24, minutes: 01)).isLessThanDayAgo();
    expect(result, false);
  });
}
