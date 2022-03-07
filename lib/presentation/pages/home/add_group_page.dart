import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/pages/general/widgets/group_user_cell.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/domain/users/group_user.dart';

import 'package:secry/injection.dart';

class AddGroupPageAndroid extends StatelessWidget {
  const AddGroupPageAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('general_add_group'),
        isSubpage: true,
        shouldHideBackButton: true,
        backgroundColor: globalWhite,
      ),
      resizeToAvoidBottomInset: false,
      body: AddGroupPageContent(),
    );
  }
}

class AddGroupPageIOS extends StatelessWidget {
  const AddGroupPageIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddGroupPageContent();
  }
}

class AddGroupPageContent extends StatelessWidget {
  const AddGroupPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddGroupPageBloc>()..add(const AddGroupPageEvent.initialized()),
      child: BlocBuilder<AddGroupPageBloc, AddGroupPageState>(
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: state.currentStepIndex == 0
                        ? AddGroupPageStepOneSection()
                        : AddGroupPageStepTwoSection(
                            searchValue: state.searchAllPeopleSearchValue,
                            usersForSearchQuery: state.usersForSearchQuery,
                            usersAddedToGroup: state.groupMembers,
                          ),
                  ),
                ),
                BottomNavigationButtonsSection(
                  stepIndex: state.currentStepIndex,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class AddGroupPageStepOneSection extends StatefulWidget {
  AddGroupPageStepOneSection({Key? key}) : super(key: key);

  @override
  State<AddGroupPageStepOneSection> createState() => _AddGroupPageStepOneSectionState();
}

class _AddGroupPageStepOneSectionState extends State<AddGroupPageStepOneSection> {
  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cameraButtonWidthHeight = max(MediaQuery.of(context).size.width * 0.22, 66).toDouble();
    final maximumTitleLength = 24;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          // TODO add maximum characters (and show in ui)
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: tr('add_group_title'),
              suffixText: "${maximumTitleLength - _titleController.text.length}",
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kMediumGrayV2,
                  width: 1.0,
                ),
              ),
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(maximumTitleLength),
            ],
            validator: (String? value) {
              if (value == null) {
                return null;
              }
              if (value.isEmpty) {
                return tr('warning_field_is_empty');
              } else if (value.length > maximumTitleLength) {
                return tr('warning_too_many_characters');
              }
              return null;
            },
            onChanged: (newValue) {
              context.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupTitleUpdated(newValue));
            },
          ),
          SizedBox(height: 30),
          Text(tr('add_group_group_picture')),
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: kMediumGrayV2, width: 1.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: cameraButtonWidthHeight,
                      height: cameraButtonWidthHeight,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(cameraButtonWidthHeight / 2),
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: cameraButtonWidthHeight * 0.44,
                        color: globalWhite,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      tr('action_add_group_picture'),
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddGroupPageStepTwoSection extends StatefulWidget {
  final String searchValue;
  final List<GroupUser> usersForSearchQuery;
  final List<GroupUser> usersAddedToGroup;

  AddGroupPageStepTwoSection(
      {Key? key, required this.searchValue, required this.usersForSearchQuery, required this.usersAddedToGroup})
      : super(key: key);

  @override
  State<AddGroupPageStepTwoSection> createState() => _AddGroupPageStepTwoSectionState();
}

class _AddGroupPageStepTwoSectionState extends State<AddGroupPageStepTwoSection> {
  final TextEditingController searchBarSearchAllPeopleTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
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
                autofocus: widget.searchValue == '',
                autocorrect: false,
                decoration: InputDecoration(
                  fillColor: searchBarBackgroundColor,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  suffixIcon: Visibility(
                    visible: widget.searchValue.length > 0,
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
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.usersForSearchQuery.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: UserCell(
                          groupUser: widget.usersForSearchQuery[index],
                          actionButtonActionNotExecutedText: tr('action_add'),
                          actionButtonActionExecutedText: tr('action_added'),
                          isActionButtonActionExecuted: false,
                          userRowTrailingAction: (userId) {
                            // TODO add user with ID
                          }),
                      onTap: () => {
                            // TODO open user page
                          });
                },
              ),
            ],
          ),
        ),
        Container(color: kLineSeparatorColor, height: 1, width: MediaQuery.of(context).size.width),
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 20.0, bottom: 30.0, left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr('add_group_added_people'),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
                  ),
                  SizedBox(width: 8),
                  Text(
                    widget.usersAddedToGroup.length.toString(),
                    style: TextStyle(fontSize: fontSizeMedium),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.usersAddedToGroup.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: UserCell(
                          groupUser: widget.usersAddedToGroup[index],
                          actionButtonActionNotExecutedText: tr('action_add'),
                          actionButtonActionExecutedText: tr('action_added'),
                          isActionButtonActionExecuted: true,
                          userRowTrailingAction: (userId) {
                            // TODO add user with ID
                          }),
                      onTap: () => {
                            // TODO open user page
                          });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomNavigationButtonsSection extends StatelessWidget {
  final int stepIndex;
  final totalNumberOfSteps = 2;
  final horizontalButtonsSpacing = 12.0;
  final contentToEdgePadding = 20.0;

  const BottomNavigationButtonsSection({Key? key, required this.stepIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - (2 * contentToEdgePadding) - horizontalButtonsSpacing) / 2;
    final buttonHeight = 50.0;
    final padding = 20.0;

    return Container(
      height: buttonHeight + (2 * padding),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: kLineSeparatorColor))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              Container(
                width: buttonWidth,
                height: buttonHeight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: kButtonRadiusXs,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(cancelButtonGrayWhite),
                  ),
                  onPressed: () {
                    handlePreviousCancelActionForIndex(context, max(0, stepIndex));
                  },
                  child: Text(
                    stepIndex == 0 ? tr('action_cancel') : tr('action_previous'),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: kMediumGrayExtraDark),
                  ),
                ),
              ),
              SizedBox(
                width: horizontalButtonsSpacing,
              ),
              Container(
                width: buttonWidth,
                height: buttonHeight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: kButtonRadiusXs,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  onPressed: () {
                    handleNextCreateActionForIndex(context, stepIndex, totalNumberOfSteps);
                  },
                  child: Text(
                    stepIndex == 0 ? tr('action_next') : tr('action_create'),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: globalWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handlePreviousCancelActionForIndex(BuildContext context, int index) {
    final newIndex = max(0, index - 1);

    if (index != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (index == 0) {
      Navigator.of(context).pop(context);
    }
  }

  void handleNextCreateActionForIndex(BuildContext context, int index, int totalNumberOfSteps) {
    final newIndex = min(totalNumberOfSteps - 1, index + 1);

    if (index != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (index >= (totalNumberOfSteps - 1)) {
      Navigator.of(context).pop(context);
    }
  }
}
