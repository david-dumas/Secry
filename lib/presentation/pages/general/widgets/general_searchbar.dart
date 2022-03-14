import 'package:flutter/material.dart';

import 'package:secry/constants.dart';

class GeneralSearchbar extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController searchBarTextEditingController;
  final String searchValue;
  final bool isAutoFocusEnabled;
  final String hintText;
  final Function(String newValue) searchValueUpdated;

  const GeneralSearchbar({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.searchBarTextEditingController,
    required this.searchValue,
    this.isAutoFocusEnabled = false,
    required this.hintText,
    required this.searchValueUpdated,
  })  : _formKey = formKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextField(
        controller: searchBarTextEditingController,
        autofocus: !isAutoFocusEnabled ? false : searchValue == '',
        autocorrect: false,
        decoration: InputDecoration(
          fillColor: searchBarBackgroundColor,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          suffixIcon: Visibility(
            visible: searchValue != '',
            child: IconButton(
              icon: Icon(Icons.clear),
              color: searchBarClearButtonColor,
              onPressed: () {
                searchBarTextEditingController.text = '';
                searchValueUpdated('');
              },
            ),
          ),
          hintText: hintText,
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
    );
  }
}
