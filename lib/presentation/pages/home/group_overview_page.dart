import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/group_overview/group_overview_bloc.dart';
import 'package:secry/util/date_and_time/text_from_date.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';

import 'package:secry/injection.dart';

import 'all_chats_or_surveys_in_group_page.dart';

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
              ),
              body: RefreshIndicator(
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
                          title: tr('home_chats'),
                          totalAmountOfGroups: getCellItemsFrom(state.chatInfoItems).length,
                          cellInfoItems: getCellItemsFrom(state.chatInfoItems),
                          isMaximumNumberOfCellsToShowEnabled: true,
                          maximumNumberOfCellsToShow: 3,
                          isTitleRowActionButtonVisible: getCellItemsFrom(state.chatInfoItems).length > 3,
                          titleRowActionButtonText: tr('general_see_all'),
                          isDataFetched: state.isDataFetched,
                          emptyStateTitle: tr('empty_state_no_chats_title'),
                          emptyStateDescription: tr('empty_state_no_chats_description'),
                          emptyStateIcon: Icon(Icons.group_add),
                          titleRowTrailingAction: () {
                            pushNewScreen(
                              context,
                              screen: AllChatsOrSurveysInGroupPage(
                                cellInfoItems: getCellItemsFrom(state.chatInfoItems),
                                pageTitle: tr('home_all_chats'),
                                hintText: '${tr('action_search_chats')}...',
                              ),
                              withNavBar: true,
                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            );
                          },
                          openPageForPressedCell: (String id, String groupTitle) {
                            // TODO open chat page for cell
                          },
                        ),
                        GroupSection(
                          title: tr('home_surveys'),
                          totalAmountOfGroups: getCellItemsFrom(state.surveyInfoItems).length,
                          cellInfoItems: getCellItemsFrom(state.surveyInfoItems),
                          isMaximumNumberOfCellsToShowEnabled: true,
                          maximumNumberOfCellsToShow: 3,
                          isTitleRowActionButtonVisible: getCellItemsFrom(state.surveyInfoItems).length > 3,
                          titleRowActionButtonText: tr('general_see_all'),
                          isDataFetched: state.isDataFetched,
                          emptyStateTitle: tr('empty_state_no_surveys_title'),
                          emptyStateDescription: tr('empty_state_no_surveys_description'),
                          emptyStateIcon: Icon(Icons.group_add),
                          titleRowTrailingAction: () {
                            pushNewScreen(
                              context,
                              screen: AllChatsOrSurveysInGroupPage(
                                cellInfoItems: getCellItemsFrom(state.surveyInfoItems),
                                pageTitle: tr('home_all_surveys'),
                                hintText: '${tr('action_search_surveys')}...',
                              ),
                              withNavBar: true,
                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            );
                          },
                          openPageForPressedCell: (String id, String groupTitle) {
                            // TODO Open subpage for chat
                            // pushNewScreen(
                            //   context,
                            //   screen: GroupOverviewPage(title: groupTitle, groupId: id),
                            //   withNavBar: true,
                            //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            // );
                          },
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
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
