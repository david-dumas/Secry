import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/group_overview/group_overview_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';

import 'package:secry/injection.dart';

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
              body: SingleChildScrollView(
                child: GroupSection(
                  title: tr('home_chats'),
                  cellInfoItems: getChatsCellItems(state.chatInfoItems),
                  titleRowActionButtonText: tr('general_see_all'),
                  emptyStateTitle: tr('empty_state_no_chats_title'),
                  emptyStateDescription: tr('empty_state_no_chats_description'),
                  emptyStateIcon: Icon(Icons.group_add),
                  titleRowTrailingAction: () {
                    // TODO handle 'see all' action
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
              ));
        },
      ),
    );
  }

  List<GeneralListCellInfoItem> getChatsCellItems(List<GroupOverviewRowInfo> chatsInfoItems) {
    return chatsInfoItems
        .map((groupInfoItem) => GeneralListCellInfoItem(
            id: groupInfoItem.id,
            title: groupInfoItem.title,
            description: groupInfoItem.lastMessage,
            timeIndication: groupInfoItem.timeIndication,
            svg: groupInfoItem.svg))
        .toList();
  }
}
