import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/pages/general/widgets/general_list_cell.dart';

class GroupSection extends StatelessWidget {
  final String title;
  final int totalAmountOfGroups;
  final List<GeneralListCellInfoItem> cellInfoItems;
  final bool isMaximumNumberOfCellsToShowEnabled;
  final int maximumNumberOfCellsToShow;
  final bool isTitleRowActionButtonVisible;
  final String titleRowActionButtonText;
  final String emptyStateTitle;
  final String emptyStateDescription;
  final Icon emptyStateIcon;
  final Function()? titleRowTrailingAction;
  final Function(String id, String groupTitle)? openPageForPressedCell;

  const GroupSection(
      {Key? key,
      required this.title,
      required this.totalAmountOfGroups,
      required this.cellInfoItems,
      this.isMaximumNumberOfCellsToShowEnabled = false,
      this.maximumNumberOfCellsToShow = 99999,
      required this.isTitleRowActionButtonVisible,
      required this.titleRowActionButtonText,
      required this.emptyStateTitle,
      required this.emptyStateDescription,
      required this.emptyStateIcon,
      required this.titleRowTrailingAction,
      required this.openPageForPressedCell})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      GroupSectionTitleRow(
          title: title,
          amountOfGroups: totalAmountOfGroups,
          isTitleRowActionButtonVisible: isTitleRowActionButtonVisible,
          titleRowActionButtonText: titleRowActionButtonText,
          trailingActionButtonAction: () {
            if (titleRowTrailingAction != null) {
              titleRowTrailingAction!();
            }
          }),
      cellInfoItems.length < 1
          ? GroupSectionEmptyStateRow(
              title: emptyStateTitle,
              description: emptyStateDescription,
              icon: emptyStateIcon,
            )
          : ContentSectionWithRows(
              cellInfoItems: this.cellInfoItems,
              isMaximumNumberOfCellsToShowEnabled: isMaximumNumberOfCellsToShowEnabled,
              maximumNumberOfCellsToShow: maximumNumberOfCellsToShow,
              openPageForPressedCell: openPageForPressedCell),
    ]);
  }
}

class GroupSectionTitleRow extends StatelessWidget {
  final String title;
  final int amountOfGroups;
  final bool isTitleRowActionButtonVisible;
  final String titleRowActionButtonText;
  final Function()? trailingActionButtonAction;

  const GroupSectionTitleRow(
      {Key? key,
      required this.title,
      required this.amountOfGroups,
      required this.isTitleRowActionButtonVisible,
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
          visible: isTitleRowActionButtonVisible,
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
              if (trailingActionButtonAction != null) {
                trailingActionButtonAction!();
              }
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

class ContentSectionWithRows extends StatefulWidget {
  final List<GeneralListCellInfoItem> cellInfoItems;
  final bool isMaximumNumberOfCellsToShowEnabled;
  final int maximumNumberOfCellsToShow;
  final Function(String id, String groupTitle)? openPageForPressedCell;

  const ContentSectionWithRows({
    Key? key,
    required this.cellInfoItems,
    required this.openPageForPressedCell,
    this.isMaximumNumberOfCellsToShowEnabled = false,
    this.maximumNumberOfCellsToShow = 99999,
  }) : super(key: key);

  @override
  _ContentSectionWithRowsState createState() => _ContentSectionWithRowsState();
}

class _ContentSectionWithRowsState extends State<ContentSectionWithRows> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount:
          widget.isMaximumNumberOfCellsToShowEnabled ? widget.maximumNumberOfCellsToShow : widget.cellInfoItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: GeneralListCell(
              listCellInfoItem: GeneralListCellInfoItem(
                  id: widget.cellInfoItems[index].id,
                  title: widget.cellInfoItems[index].title,
                  description: widget.cellInfoItems[index].description,
                  timeIndication: widget.cellInfoItems[index].timeIndication,
                  svg: widget.cellInfoItems[index].svg),
            ),
            onTap: () {
              if (widget.openPageForPressedCell != null) {
                widget.openPageForPressedCell!(widget.cellInfoItems[index].id, widget.cellInfoItems[index].title);
              }
            });
      },
    );
  }
}
