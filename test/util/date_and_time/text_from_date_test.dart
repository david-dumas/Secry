import 'package:secry/util/date_and_time/text_from_date.dart';
import 'package:test/test.dart';

void main() {
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