import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../widgets/bars/general_appbar.dart';

class RespondToSurveyPage extends StatelessWidget {
  final String title;
  final String groupId;

  const RespondToSurveyPage({Key? key, required this.title, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: '${this.title}',
        isSubpage: true,
        backgroundColor: globalWhite,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePaddingAllSides,
          child: Text('${this.groupId}')
        ),
      ),
    );;
  }
}

