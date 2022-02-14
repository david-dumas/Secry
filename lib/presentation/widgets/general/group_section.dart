import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:secry/presentation/widgets/multi_avatar/avatar_painter.dart';
import 'package:secry/presentation/widgets/multi_avatar/svg_wrapper.dart';

class GroupSection extends StatelessWidget {
  final String title;
  final int amountOfGroups;
  final List<GroupOverviewRowInfo> groupsInfo;
  final String titleRowActionButtonText;
  final String emptyStateTitle;
  final String emptyStateDescription;
  final Icon emptyStateIcon;
  final Function()? titleRowTrailingAction;

  const GroupSection(
      {Key? key,
      required this.title,
      required this.amountOfGroups,
      required this.groupsInfo,
      required this.titleRowActionButtonText,
      required this.emptyStateTitle,
      required this.emptyStateDescription,
      required this.emptyStateIcon,
      required this.titleRowTrailingAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePaddingAllSides,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          child: GroupSectionTitleRow(
              title: title,
              amountOfGroups: amountOfGroups,
              titleRowActionButtonText: titleRowActionButtonText,
              trailingActionButtonAction: () {
                titleRowTrailingAction;
              }),
        ),
        amountOfGroups < 1
            ? GroupSectionEmptyStateRow(
                title: emptyStateTitle,
                description: emptyStateDescription,
                icon: emptyStateIcon,
              )
            : GroupRowsContentSection(groupsInfo: this.groupsInfo),
      ]),
    );
  }
}

class GroupSectionTitleRow extends StatelessWidget {
  final String title;
  final int amountOfGroups;
  final String titleRowActionButtonText;
  final Function()? trailingActionButtonAction;

  const GroupSectionTitleRow(
      {Key? key,
      required this.title,
      required this.amountOfGroups,
      required this.titleRowActionButtonText,
      required this.trailingActionButtonAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
        ),
        SizedBox(width: 8),
        Text(
          amountOfGroups.toString(),
          style: TextStyle(fontSize: fontSizeMedium),
        ),
        Spacer(),
        Visibility(
          visible: amountOfGroups > 0,
          child: TextButton(
            child: Text(
              titleRowActionButtonText,
              textAlign: TextAlign.right,
              style: TextStyle(color: kPrimaryColor),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(77, 44),
              alignment: Alignment.topRight,
            ),
            onPressed: () {
              trailingActionButtonAction;
            },
          ),
        )
      ],
    );
  }
}

class GroupSectionEmptyStateRow extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;

  const GroupSectionEmptyStateRow({Key? key, required this.title, required this.description, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon,
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(fontSize: fontSizeSmall),
              textAlign: TextAlign.start,
            )
          ],
        )
      ],
    );
  }
}

class GroupRowsContentSection extends StatefulWidget {
  final List<GroupOverviewRowInfo> groupsInfo;

  const GroupRowsContentSection({Key? key, required this.groupsInfo}) : super(key: key);

  @override
  _GroupRowsContentSectionState createState() => _GroupRowsContentSectionState();
}

class _GroupRowsContentSectionState extends State<GroupRowsContentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: getRowWidgets(context, widget.groupsInfo),
    );
  }

  List<Widget> getRowWidgets(BuildContext context, List<GroupOverviewRowInfo> groupsInfo) {
    List<Widget> rows = [];

    groupsInfo.asMap().forEach((index, groupInfo) {
      rows.add(SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: marginMedium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  height: 44.0,
                  width: 44.0,
                  child: groupInfo.svg == null
                      ? SizedBox.shrink()
                      : CustomPaint(
                          painter: AvatarPainter(groupInfo.svg!, Size(44.0, 44.0)),
                          child: Container(),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      groupInfo.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      groupInfo.lastMessage,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Align(alignment: Alignment.centerRight, child: Text(tr('general_now')))
            ],
          ),
        ),
      ));
    });

    return rows;
  }
}
