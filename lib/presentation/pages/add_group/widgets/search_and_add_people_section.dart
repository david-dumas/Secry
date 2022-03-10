import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/presentation/pages/general/widgets/empty_state.dart';
import 'package:secry/presentation/pages/general/widgets/group_user_cell.dart';

class SearchAndAddPeopleSection extends StatelessWidget {
  final String searchValue;
  final List<GroupUser> usersForSearchQuery;
  final TextEditingController searchBarSearchAllPeopleTextEditingController;

  SearchAndAddPeopleSection(
      {Key? key,
      required this.searchValue,
      required this.usersForSearchQuery,
      required this.searchBarSearchAllPeopleTextEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr('action_add_people'),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
          ),
          SizedBox(height: 16),
          TextField(
            controller: searchBarSearchAllPeopleTextEditingController,
            autofocus: false, //widget.searchValue == '',
            autocorrect: false,
            decoration: InputDecoration(
              fillColor: searchBarBackgroundColor,
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              suffixIcon: Visibility(
                visible: searchValue.length > 0,
                child: IconButton(
                  icon: Icon(Icons.clear),
                  color: searchBarClearButtonColor,
                  onPressed: () {
                    searchBarSearchAllPeopleTextEditingController.text = '';
                    context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(''));
                  },
                ),
              ),
              hintText: '${tr('action_search')}...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
            onChanged: (newValue) {
              context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(newValue));
            },
          ),
          SizedBox(height: 20),
          usersForSearchQuery.length == 0 && searchValue.length > 0
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: EmptyState(
                    title: tr('empty_state_search_no_results_title_general'),
                    description: tr('empty_state_search_no_results_description_general'),
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: usersForSearchQuery.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        child: UserCell(
                            groupUser: usersForSearchQuery[index],
                            actionButtonActionNotExecutedText: tr('action_add'),
                            actionButtonActionExecutedText: tr('action_added'),
                            isActionButtonActionExecuted: false,
                            userRowTrailingAction: (userId) {
                              // TODO add user with ID
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
