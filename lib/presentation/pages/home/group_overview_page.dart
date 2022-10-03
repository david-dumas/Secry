import 'dart:io' show Platform;
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:secry/application/group_overview/group_overview_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/pages/general/widgets/report_alert_dialog.dart';
import 'package:secry/domain/groups/feature_type.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/presentation/pages/add_chat/add_chat_page.dart';
import 'package:secry/presentation/pages/add_survey/add_survey_page.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';
import 'package:secry/application/add_survey/add_survey_page_bloc.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/routes/router.gr.dart';

class GroupOverviewPage extends StatelessWidget {
  final String title;
  final String groupId;

  const GroupOverviewPage({Key? key, required this.title, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GroupOverviewBloc>()..add(GroupOverviewEvent.initialized(this.groupId)),
      child: BlocBuilder<GroupOverviewBloc, GroupOverviewState>(
        builder: (context, state) {
          return Scaffold(
              appBar: GeneralAppbar(
                  title: title,
                  isSubpage: true,
                  backgroundColor: globalWhite,
                  isShowingBottomBorder: true,
                  trailingGestureWithIcon: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ReportAlertDialog();
                          });
                    },
                    child: Icon(
                      Icons.flag_outlined,
                      color: globalBlack,
                    ),
                  )),
              body: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    color: globalWhite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: state.currentFeatureType == FeatureType.chats
                                            ? kPrimaryColor
                                            : kLineSeparatorColor))),
                            child: TextButton(
                                style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                                onPressed: () {
                                  context
                                      .read<GroupOverviewBloc>()
                                      .add(GroupOverviewEvent.currentFeatureTypeUpdated(FeatureType.chats));
                                },
                                child: Text(
                                  tr('home_chats'),
                                  style: TextStyle(
                                      color: state.currentFeatureType == FeatureType.chats
                                          ? kPrimaryColor
                                          : kMediumGrayV2),
                                ))),
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: state.currentFeatureType == FeatureType.surveys
                                            ? kPrimaryColor
                                            : kLineSeparatorColor))),
                            child: TextButton(
                                style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                                onPressed: () {
                                  context
                                      .read<GroupOverviewBloc>()
                                      .add(GroupOverviewEvent.currentFeatureTypeUpdated(FeatureType.surveys));
                                },
                                child: Text(
                                  tr('home_surveys'),
                                  style: TextStyle(
                                      color: state.currentFeatureType == FeatureType.surveys
                                          ? kPrimaryColor
                                          : kMediumGrayV2),
                                ))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context.read<GroupOverviewBloc>().add(GroupOverviewEvent.groupOverviewRefreshed(this.groupId));
                      },
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: pagePaddingAllSides,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              GroupSection(
                                title: state.currentFeatureType == FeatureType.chats
                                    ? tr('home_chats')
                                    : tr('home_surveys'),
                                totalAmountOfGroups: state.currentFeatureType == FeatureType.chats
                                    ? getCellItemsFrom(state.chatInfoItems).length
                                    : getCellItemsFrom(state.surveyInfoItems).length,
                                cellInfoItems: state.currentFeatureType == FeatureType.chats
                                    ? getCellItemsFrom(state.chatInfoItems)
                                    : getCellItemsFrom(state.surveyInfoItems),
                                isMaximumNumberOfCellsToShowEnabled: false,
                                isTitleRowActionButtonVisible: true,
                                titleRowActionButtonText: state.currentFeatureType == FeatureType.chats
                                    ? tr('action_new_chat')
                                    : tr('action_new_survey'),
                                isFetchingInitialGroups: state.isFetching,
                                isDataFetched: state.isDataFetched,
                                emptyStateTitle: state.currentFeatureType == FeatureType.chats
                                    ? tr('empty_state_no_chats_title')
                                    : tr('empty_state_no_surveys_title'),
                                emptyStateDescription: state.currentFeatureType == FeatureType.chats
                                    ? tr('empty_state_no_chats_description')
                                    : tr('empty_state_no_surveys_description'),
                                emptyStateIcon: Icon(Icons.group_add),
                                currentFeatureType: state.currentFeatureType,
                                titleRowTrailingAction: () {
                                  if (state.currentFeatureType == FeatureType.chats) {
                                    if (Platform.isAndroid) {
                                      AutoRouter.of(context).push(AddChatPageAndroidRoute());
                                    } else if (Platform.isIOS) {
                                      showMaterialModalBottomSheet(
                                        context: context,
                                        useRootNavigator: true,
                                        builder: (context) => AddChatPageIOS(),
                                      );
                                    }
                                  } else if (state.currentFeatureType == FeatureType.surveys) {
                                    if (Platform.isAndroid) {
                                      AutoRouter.of(context)
                                          .push(AddSurveyPageAndroidRoute())
                                          .then((isRefreshNeeded) async {
                                        context.read<GroupOverviewBloc>().add(GroupOverviewEvent.groupRefreshed());
                                      });
                                    } else if (Platform.isIOS) {
                                      showMaterialModalBottomSheet(
                                        context: context,
                                        useRootNavigator: true,
                                        builder: (context) => AddSurveyPageIOS(),
                                      ).then((isRefreshNeeded) async {
                                        context.read<GroupOverviewBloc>().add(GroupOverviewEvent.groupRefreshed());
                                      });
                                      ;
                                    }
                                  }
                                },
                                openPageForPressedCell: (String id, String groupTitle) {
                                  // TODO open chat / survey page for cell
                                },
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }

  List<GeneralListCellInfoItem> getCellItemsFrom(List<GroupOverviewRowInfo> chatsInfoItems) {
    return chatsInfoItems
        .map((groupInfoItem) => GeneralListCellInfoItem(
            id: groupInfoItem.id,
            title: groupInfoItem.title,
            description: groupInfoItem.lastChatMessage?.text ?? '',
            timeIndication: groupInfoItem.getTimoAgoLabel(),
            svg: groupInfoItem.svg))
        .toList();
  }
}
