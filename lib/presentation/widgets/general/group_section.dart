import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/domain/groups/feature_type.dart';
import 'package:secry/presentation/pages/filter_surveys/filter_surveys_page.dart';
import 'package:secry/presentation/pages/general/widgets/general_list_cell.dart';
import 'package:secry/presentation/routes/router.gr.dart';

class GroupSection extends StatelessWidget {
  final String title;
  final int totalAmountOfGroups;
  final List<GeneralListCellInfoItem> cellInfoItems;
  final bool isMaximumNumberOfCellsToShowEnabled;
  final int? maximumNumberOfCellsToShow;
  final bool isTitleRowActionButtonVisible;
  final String titleRowActionButtonText;
  final bool isFetchingInitialGroups;
  final bool isFetchingMoreGroupsForScrollDown;
  final bool isDataFetched;
  final String emptyStateTitle;
  final String emptyStateDescription;
  final double bottomMargin;
  final Icon emptyStateIcon;
  final FeatureType? currentFeatureType;
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
      this.isFetchingInitialGroups = false,
      this.isFetchingMoreGroupsForScrollDown = false,
      required this.isDataFetched,
      required this.emptyStateTitle,
      required this.emptyStateDescription,
      this.bottomMargin = 30.0,
      required this.emptyStateIcon,
      required this.titleRowTrailingAction,
      required this.openPageForPressedCell,
      this.currentFeatureType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: isFetchingInitialGroups
          ? MediaQuery.of(context).size.height - (AppBar().preferredSize.height) - kToolbarHeight - bottomMargin
          : null,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GroupSectionTitleRow(
                title: title,
                currentFeatureType: currentFeatureType,
                amountOfGroups: totalAmountOfGroups,
                isTitleRowActionButtonVisible: isTitleRowActionButtonVisible,
                titleRowActionButtonText: titleRowActionButtonText,
                trailingActionButtonAction: () {
                  if (titleRowTrailingAction != null) {
                    titleRowTrailingAction!();
                  }
                }),
            SizedBox(height: cellInfoItems.length < 1 || !isTitleRowActionButtonVisible ? 16.0 : 0.0),
            Visibility(
                visible: currentFeatureType == FeatureType.chats,
                child: Column(
                children: [
                  TextButton(
                      onPressed: () {
                        AutoRouter.of(context).push(ChatPageRoute(title: 'Studentenhuis IBB 420', chatId: "1"));
                      },
                      child: Text('Studentenhuis IBB 420')
                  ),
                  TextButton(
                      onPressed: () {
                        AutoRouter.of(context).push(ChatPageRoute(title: 'Studentenhuis Vis', chatId: "2"));
                      },
                      child: Text('Studentenhuis Vis')
                  )
                ],
            )),
            Visibility(
              visible: isFetchingInitialGroups,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(child: CircularProgressIndicator())
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !isFetchingInitialGroups,
              child: (cellInfoItems.length < 1 && isDataFetched)
                  ? GroupSectionEmptyStateRow(title: emptyStateTitle, description: emptyStateDescription)
                  : ContentSectionWithRows(
                      cellInfoItems: this.cellInfoItems,
                      isMaximumNumberOfCellsToShowEnabled: isMaximumNumberOfCellsToShowEnabled,
                      maximumNumberOfCellsToShow: maximumNumberOfCellsToShow ?? 99999,
                      openPageForPressedCell: openPageForPressedCell),
            ),
            SizedBox(
              height: bottomMargin,
            )
          ]),
    );
  }
}

class GroupSectionTitleRow extends StatelessWidget {
  final String title;
  final int amountOfGroups;
  final bool isTitleRowActionButtonVisible;
  final String titleRowActionButtonText;
  final Function()? trailingActionButtonAction;
  final FeatureType? currentFeatureType;

  const GroupSectionTitleRow(
      {Key? key,
      required this.title,
      required this.amountOfGroups,
      required this.isTitleRowActionButtonVisible,
      required this.titleRowActionButtonText,
      required this.trailingActionButtonAction,
      required this.currentFeatureType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        Visibility(
            visible: currentFeatureType == FeatureType.surveys,
            child: Row(
              children: [
                SizedBox(width: screenSize.width < 320 ? 0 : 8),
                screenSize.width > 320
                    ? TextButton.icon(
                        onPressed: () {
                          AutoRouter.of(context).push(FilterSurveysPageRoute());
                        },
                        icon: Icon(
                          Icons.filter_alt,
                          size: 24.0,
                        ),
                        label: Text(tr('filter')),
                      )
                    : IconButton(
                        onPressed: () => {AutoRouter.of(context).push(FilterSurveysPageRoute())},
                        icon: Icon(Icons.filter_alt),
                        color: kPrimaryColor)
              ],
            )),
        Spacer(),
        Visibility(
          visible: isTitleRowActionButtonVisible,
          child: TextButton(
            child: Text(
              titleRowActionButtonText,
              style: TextStyle(color: kPrimaryColor),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(77, 44),
              alignment: Alignment.center,
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
  final IconData? iconData;

  const GroupSectionEmptyStateRow({Key? key, required this.title, required this.description, this.iconData = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(visible: iconData != null, child: Icon(iconData)),
        SizedBox(width: iconData != null ? 12 : 0),
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
      itemCount: (widget.isMaximumNumberOfCellsToShowEnabled &&
              widget.cellInfoItems.length > widget.maximumNumberOfCellsToShow)
          ? widget.maximumNumberOfCellsToShow
          : widget.cellInfoItems.length,
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
