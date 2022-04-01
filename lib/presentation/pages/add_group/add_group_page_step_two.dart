import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/presentation/pages/add_group/widgets/added_people_section.dart';
import 'package:secry/presentation/pages/general/widgets/search_people_section.dart';

import 'package:secry/application/add_group/add_group_page_bloc.dart';

class AddGroupPageStepTwo extends StatefulWidget {
  final String searchValue;
  final List<GroupUser> usersForSearchQuery;
  final List<GroupUser> usersAddedToGroup;
  final bool areUsersFetched;
  final bool isFetchingUsers;

  AddGroupPageStepTwo(
      {Key? key,
      required this.searchValue,
      required this.usersForSearchQuery,
      required this.usersAddedToGroup,
      required this.areUsersFetched,
      required this.isFetchingUsers})
      : super(key: key);

  @override
  State<AddGroupPageStepTwo> createState() => _AddGroupPageStepTwoState();
}

class _AddGroupPageStepTwoState extends State<AddGroupPageStepTwo> {
  final TextEditingController searchBarSearchAllPeopleTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchPeopleSection(
          isAddingPeopleFeatureEnabled: true,
          searchValue: widget.searchValue,
          usersForSearchQuery: widget.usersForSearchQuery,
          isDataFetched: widget.areUsersFetched,
          isFetchingData: widget.isFetchingUsers,
          searchBarSearchAllPeopleTextEditingController: searchBarSearchAllPeopleTextEditingController,
          searchBarCleared: () {
            context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(''));
          },
          searchValueUpdated: (newValue) {
            context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(newValue));
          },
          addUserPressed: (GroupUser user) {
            context.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupMembersUserAdded(user));
          },
        ),
        Container(color: kLineSeparatorColor, height: 1, width: MediaQuery.of(context).size.width),
        AddedPeopleSection(groupMembers: widget.usersAddedToGroup),
      ],
    );
  }
}
