import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/presentation/pages/general/widgets/empty_state.dart';
import 'package:secry/presentation/pages/general/widgets/group_user_cell.dart';

class SearchPeopleSection extends StatelessWidget {
  final bool isAddingPeopleFeatureEnabled;
  final String searchValue;
  final List<GroupUser> usersForSearchQuery;
  final bool isDataFetched;
  final bool isFetchingData;
  final TextEditingController searchBarSearchAllPeopleTextEditingController;
  final Function() searchBarCleared;
  final Function(String newValue) searchValueUpdated;
  final Function(GroupUser user)? addUserPressed;

  SearchPeopleSection(
      {Key? key,
      this.isAddingPeopleFeatureEnabled = false,
      required this.searchValue,
      required this.usersForSearchQuery,
      required this.isDataFetched,
      required this.isFetchingData,
      required this.searchBarSearchAllPeopleTextEditingController,
      required this.searchBarCleared,
      required this.searchValueUpdated,
      this.addUserPressed = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomMargin = 50.0;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: isFetchingData
          ? MediaQuery.of(context).size.height - (AppBar().preferredSize.height) - kToolbarHeight - bottomMargin
          : null,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.0, isAddingPeopleFeatureEnabled ? 20.0 : 0.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: isFetchingData ? MainAxisAlignment.center : MainAxisAlignment.start,
          crossAxisAlignment: isFetchingData ? CrossAxisAlignment.stretch : CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: isAddingPeopleFeatureEnabled,
              child: Text(
                tr('action_add_people'),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
              ),
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
                      searchBarCleared();
                      searchBarSearchAllPeopleTextEditingController.text = '';
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
                searchValueUpdated(newValue);
              },
            ),
            SizedBox(height: 20),
            Visibility(
              visible: !isFetchingData,
              child: usersForSearchQuery.length == 0 && isDataFetched && !isFetchingData
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
                      itemCount: isAddingPeopleFeatureEnabled
                          ? min(3, usersForSearchQuery.length)
                          : usersForSearchQuery.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: UserCell(
                                isAddingPeopleFeatureEnabled: isAddingPeopleFeatureEnabled,
                                groupUser: usersForSearchQuery[index],
                                actionButtonActionNotExecutedText: tr('action_add'),
                                actionButtonActionExecutedText: tr('action_added'),
                                isActionButtonActionExecuted: false,
                                userRowTrailingAction: (user) {
                                  if (this.addUserPressed != null) {
                                    addUserPressed!(user);
                                  }
                                }),
                            onTap: () {
                              // TODO open user page
                            });
                      },
                    ),
            ),
            Visibility(
              visible: isFetchingData,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(child: CircularProgressIndicator()),
                  ],
                ),
              ),
            ),
            SizedBox(height: isAddingPeopleFeatureEnabled ? 0 : bottomMargin),
          ],
        ),
      ),
    );
  }
}
