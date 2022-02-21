import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class GroupOverviewPage extends StatelessWidget {
  final String title;
  final String groupId;

  const GroupOverviewPage({Key? key, required this.title, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalWhite,
      appBar: GeneralAppbar(
        title: title,
        isSubpage: true,
      ),
    );
  }
}
