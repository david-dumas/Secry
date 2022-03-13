import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/presentation/pages/general/widgets/empty_state.dart';
import 'package:secry/presentation/pages/general/widgets/group_user_cell.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';

class AddedPeopleSection extends StatelessWidget {
  final List<GroupUser> groupMembers;

  const AddedPeopleSection({Key? key, required this.groupMembers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 20.0, bottom: 30.0, left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: groupMembers.length > 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('add_group_added_people'),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
                ),
                SizedBox(width: 8),
                Text(
                  groupMembers.length.toString(),
                  style: TextStyle(fontSize: fontSizeMedium),
                ),
              ],
            ),
          ),
          SizedBox(height: groupMembers.length > 0 ? 20 : 0),
          groupMembers.length == 0
              ? EmptyState(
                  title: tr('empty_state_no_group_members_title'),
                  description: tr('empty_state_no_group_members_description'),
                  crossAxisAlignment: CrossAxisAlignment.start,
                )
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: groupMembers.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        child: UserCell(
                            groupUser: groupMembers[index],
                            actionButtonActionNotExecutedText: tr('action_add'),
                            actionButtonActionExecutedText: tr('action_added'),
                            isActionButtonActionExecuted: true,
                            userRowTrailingAction: (user) {
                              context.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupMembersUserDeleted(user.id));
                            }),
                        onTap: () {
                          // TODO open user page
                        });
                  },
                ),
        ],
      ),
    );
  }
}
