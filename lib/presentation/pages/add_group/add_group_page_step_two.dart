import 'package:flutter/material.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/presentation/pages/add_group/widgets/added_people_section.dart';
import 'package:secry/presentation/pages/add_group/widgets/search_and_add_people_section.dart';

class AddGroupPageStepTwo extends StatefulWidget {
  final String searchValue;
  final List<GroupUser> usersForSearchQuery;
  final List<GroupUser> usersAddedToGroup;

  AddGroupPageStepTwo(
      {Key? key, required this.searchValue, required this.usersForSearchQuery, required this.usersAddedToGroup})
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
        SearchAndAddPeopleSection(
            searchValue: widget.searchValue,
            usersForSearchQuery: widget.usersForSearchQuery,
            searchBarSearchAllPeopleTextEditingController: searchBarSearchAllPeopleTextEditingController),
        Container(color: kLineSeparatorColor, height: 1, width: MediaQuery.of(context).size.width),
        AddedPeopleSection(groupMembers: widget.usersAddedToGroup),
      ],
    );
  }
}
