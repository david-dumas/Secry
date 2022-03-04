import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';

class AddGroupPageAndroid extends StatelessWidget {
  const AddGroupPageAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('general_add_group'),
        isSubpage: true,
        backgroundColor: globalWhite,
      ),
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
      create: (context) => AddGroupPageBloc(),
      child: BlocBuilder<AddGroupPageBloc, AddGroupPageState>(
        builder: (context, state) {
          final contentToTabbarPadding = 24.0;

          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                (AppBar().preferredSize.height) -
                kToolbarHeight -
                contentToTabbarPadding,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: state.currentStepIndex == 0
                        ? AddGroupPageStepOneSection()
                        : AddGroupPageStepTwoSection(
                            searchValue: state.searchAllPeopleSearchValue,
                          ),
                  ),
                  BottomNavigationButtonsSection(
                    stepIndex: state.currentStepIndex,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AddGroupPageStepOneSection extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final GlobalKey<FormState> _titleFormKey = GlobalKey<FormState>();

  AddGroupPageStepOneSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraButtonWidthHeight = max(MediaQuery.of(context).size.width * 0.22, 66).toDouble();
    final maximumTitleLength = 24;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tr('add_group_title')),
        SizedBox(height: 8),
        // TODO add maximum characters (and show in ui)
        Form(
          key: _titleFormKey,
          child: TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: tr('add_group_title'),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kMediumGrayV2,
                  width: 1.0,
                ),
              ),
            ),
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
          ),
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
    );
  }
}

class AddGroupPageStepTwoSection extends StatefulWidget {
  final String searchValue;

  AddGroupPageStepTwoSection({Key? key, required this.searchValue}) : super(key: key);

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
        Text(tr('action_add_people')),
        SizedBox(height: 8),
        TextField(
          controller: searchBarSearchAllPeopleTextEditingController,
          autofocus: widget.searchValue == '',
          autocorrect: false,
          decoration: InputDecoration(
            fillColor: searchBarBackgroundColor,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              color: searchBarClearButtonColor,
              onPressed: () {
                searchBarSearchAllPeopleTextEditingController.text = '';
                context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(''));
              },
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
            context.read<AddGroupPageBloc>().add(AddGroupPageEvent.searchAllPeopleSearchValueUpdated(''));
          },
        ),
        SizedBox(height: 20),
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
    final buttonHeight = 44.0;

    return Container(
      color: globalWhite,
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
