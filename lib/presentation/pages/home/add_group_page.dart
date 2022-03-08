import 'dart:math';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:secry/constants.dart';

import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/pages/general/widgets/group_user_cell.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/presentation/pages/general/widgets/empty_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:secry/domain/users/group_user.dart';

import 'package:secry/injection.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';

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
                        ? AddGroupPageStepOneSection(groupImage: state.groupImage)
                        : AddGroupPageStepTwoSection(
                            searchValue: state.searchAllPeopleSearchValue,
                            usersForSearchQuery: state.usersForSearchQuery,
                            usersAddedToGroup: state.groupMembers,
                          ),
                  ),
                ),
                BottomNavigationButtonsSection(
                  stepIndex: state.currentStepIndex,
                  groupTitle: state.groupTitle,
                  groupMembers: state.groupMembers,
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
  final Image? groupImage;

  AddGroupPageStepOneSection({Key? key, this.groupImage = null}) : super(key: key);

  @override
  State<AddGroupPageStepOneSection> createState() => _AddGroupPageStepOneSectionState();
}

class _AddGroupPageStepOneSectionState extends State<AddGroupPageStepOneSection> {
  final TextEditingController _titleController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext mainContext) {
    final cameraButtonWidthHeight = max(MediaQuery.of(mainContext).size.width * 0.22, 66).toDouble();
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
            autofocus: false, // _titleController.text.length == 0,
            textCapitalization: TextCapitalization.sentences,
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
              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupTitleUpdated(newValue));
            },
          ),
          SizedBox(height: 30),
          Text(tr('add_group_group_picture')),
          SizedBox(height: 8),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(mainContext).size.width - 40,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: kMediumGrayV2, width: 1.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  child: widget.groupImage != null
                      ? Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: widget.groupImage!.image,
                              fit: BoxFit.fitWidth, // TODO add possibility to scroll to part of image to use
                            ),
                          ),
                        )
                      : Padding(
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
              ),
            ),
            onTap: () {
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) {
                  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                    return Wrap(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(mainContext).size.width,
                                height: 55,
                                child: TextButton(
                                  onPressed: () async {
                                    try {
                                      final cameraImage = await _imagePicker.pickImage(source: ImageSource.camera);
                                      if (cameraImage != null) {
                                        final image = Image.file(File(cameraImage.path));
                                        mainContext
                                            .read<AddGroupPageBloc>()
                                            .add(AddGroupPageEvent.groupImageUpdated(image));

                                        Navigator.of(context).pop(context);
                                      }
                                    } catch (e) {
                                      // TODO log pick image error
                                    }
                                  },
                                  child: Text(
                                    tr('action_make_picture'),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 55,
                                child: TextButton(
                                  onPressed: () async {
                                    try {
                                      final XFile? galleryImage =
                                          await _imagePicker.pickImage(source: ImageSource.gallery);
                                      if (galleryImage != null) {
                                        final image = Image.file(File(galleryImage.path));
                                        mainContext
                                            .read<AddGroupPageBloc>()
                                            .add(AddGroupPageEvent.groupImageUpdated(image));

                                        Navigator.of(context).pop(context);
                                      }
                                    } catch (e) {
                                      // TODO log image from gallery error
                                    }
                                  },
                                  child: Text(
                                    tr('action_choose_picture'),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: widget.groupImage != null,
                                child: TextButton(
                                  onPressed: () async {
                                    mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageDeleted());
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    tr('action_delete_picture'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        )
                      ],
                    );
                  });
                },
              );
            },
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
                autofocus: false, //widget.searchValue == '',
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
                      onTap: () {
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
              Visibility(
                visible: widget.usersAddedToGroup.length > 0,
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
                      widget.usersAddedToGroup.length.toString(),
                      style: TextStyle(fontSize: fontSizeMedium),
                    ),
                  ],
                ),
              ),
              SizedBox(height: widget.usersAddedToGroup.length > 0 ? 20 : 0),
              widget.usersAddedToGroup.length == 0
                  ? EmptyState(
                      title: tr('empty_state_no_group_members_title'),
                      description: tr('empty_state_no_group_members_description'),
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  : ListView.builder(
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
                            onTap: () {
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
  final String groupTitle;
  List<GroupUser> groupMembers;

  final totalNumberOfSteps = 2;
  final horizontalButtonsSpacing = 12.0;
  final contentToEdgePadding = 20.0;

  BottomNavigationButtonsSection(
      {Key? key, required this.stepIndex, required this.groupTitle, required this.groupMembers})
      : super(key: key);

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
                    handlePreviousOrCancelActionForIndex(context, max(0, stepIndex));
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
                    handleNextOrCreateActionForIndex(context,
                        currentIndex: stepIndex,
                        totalNumberOfSteps: totalNumberOfSteps,
                        groupTitle: groupTitle,
                        groupMembers: groupMembers);
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

  bool validateIfNextStepChangeActionIsAllowed(
      {required int currentIndex, required String groupTitle, required List<GroupUser> groupMembers}) {
    if (currentIndex == 0) {
      return groupTitle.length > 0;
    } else if (currentIndex > 0) {
      return groupTitle.length > 0 && groupMembers.length > 0;
    } else {
      return false;
    }
  }

  void handlePreviousOrCancelActionForIndex(BuildContext context, int index) {
    final newIndex = max(0, index - 1);

    if (index != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (index == 0) {
      Navigator.of(context).pop(context);
    }
  }

  void handleNextOrCreateActionForIndex(BuildContext context,
      {required int currentIndex,
      required int totalNumberOfSteps,
      required String groupTitle,
      required List<GroupUser> groupMembers}) {
    final newIndex = min(totalNumberOfSteps - 1, currentIndex + 1);
    final isNextStepAllowed = validateIfNextStepChangeActionIsAllowed(
        currentIndex: currentIndex, groupTitle: groupTitle, groupMembers: groupMembers);

    if (!isNextStepAllowed) {
      final warningTitle = tr('warning_title_general');
      var warningMessage = "";

      if (currentIndex == 0 && groupTitle.length == 0) {
        warningMessage = tr('warning_title_minimum_length');
      } else if (currentIndex > 0 && groupMembers.length == 0) {
        warningMessage = tr('warning_minimum_group_members');
      } else {
        warningMessage = tr('warning_fill_in_all_fields_to_continue');
      }

      DialogHelper().showAlertDialog(context, title: warningTitle, description: warningMessage);
      return;
    }

    if (currentIndex != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (currentIndex >= (totalNumberOfSteps - 1)) {
      Navigator.of(context).pop(context);
    }
  }
}
