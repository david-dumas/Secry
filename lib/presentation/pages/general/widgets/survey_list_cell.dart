import 'package:flutter/material.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/widgets/multi_avatar/avatar_painter.dart';

import 'package:secry/constants.dart';

import '../../../../domain/general/survey_questions_cell_info_item.dart';

class SurveyListCell extends StatelessWidget {
  final SurveyQuestionCellInfoItem listCellInfoItem;

  const SurveyListCell({Key? key, required this.listCellInfoItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        color: globalWhite,
        child: Padding(
          padding: const EdgeInsets.only(bottom: marginMedium),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 44.0,
                  decoration: BoxDecoration(
                    color: globalWhite,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listCellInfoItem.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      listCellInfoItem.questions,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              SizedBox(width: 16),
              Align(alignment: Alignment.centerRight)
            ],
          ),
        ),
      );
  }
}
