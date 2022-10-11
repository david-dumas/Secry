import 'package:secry/util/date_and_time/text_from_date.dart';

class SurveyRowInfo {
  final String questionId;
  final String questiontitle;
  final String questiontype;

  SurveyRowInfo({
    required this.questionId,
    required this.questiontitle,
    required this.questiontype

  });

  factory SurveyRowInfo.fromJsonMap(Map<String, dynamic> json) {
    print(SurveyRowInfo);
    return SurveyRowInfo(
        questionId: json.containsKey('questionId') ? json['questionId'].toString() : '',
        questiontitle:
            json.containsKey('questiontitle') ? json['questiontitle'] : '',
        questiontype: json.containsKey('questiontype') ? json['questiontype'] : '');
  }
}
