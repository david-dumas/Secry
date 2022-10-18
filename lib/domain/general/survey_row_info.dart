import 'package:secry/util/date_and_time/text_from_date.dart';

class SurveyRowInfo {
  final String id;
  final String title;
  final String type;

  SurveyRowInfo({
    required this.id,
    required this.title,
    required this.type,
  });

  factory SurveyRowInfo.fromJsonMap(Map<String, dynamic> json) {
    print(SurveyRowInfo);
    return SurveyRowInfo(
        id: json.containsKey('questionId') ? json['questionId'].toString() : '',
        title:
            json.containsKey('questiontitle') ? json['questiontitle'] : '',
        type: json.containsKey('questiontype') ? json['questiontype'] : '',
    );
  }
}
