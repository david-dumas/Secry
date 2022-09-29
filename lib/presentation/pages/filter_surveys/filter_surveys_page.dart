import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/custom_range_slider.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import '../../../constants.dart';

class FilterSurveysPage extends StatefulWidget {
  const FilterSurveysPage({Key? key}) : super(key: key);

  @override
  State<FilterSurveysPage> createState() => _FilterSurveysPageState();
}

class _FilterSurveysPageState extends State<FilterSurveysPage> {
  String _dropdownValue = 'date';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('filter_surveys_title'),
        isSubpage: true,
        backgroundColor: globalWhite,
        isShowingBottomBorder: true,
        shouldHaveCloseButton: true,
        trailingGestureWithIcon: GestureDetector(
            onTap: () {},
            child: TextButton(
                onPressed: () {},
                child: Text(tr('filter_surveys_reset')),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(40, 30),
                    foregroundColor: kDarkGrayTextColor,
                    alignment: Alignment.center))),
      ),
      body: Padding(
        padding: pagePaddingAllSides,
        child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tr('filter_surveys_sort_by'), style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                SizedBox(height: marginSmall),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButtonFormField(
                      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
                      isExpanded: true,
                      dropdownColor: kLightGray,
                      icon: Icon(Icons.expand_more),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 16.0, 8.0, 16.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                              borderSide: BorderSide(width: 1, style: BorderStyle.solid))),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                      onChanged: (String? value) {
                        setState(() {
                          _dropdownValue = value!;
                        });
                      },
                      value: _dropdownValue,
                      items: [
                        DropdownMenuItem(child: Text('Date'), value: 'date'),
                        DropdownMenuItem(child: Text('A-Z'), value: 'alphabetic')
                      ]),
                ),
                SizedBox(height: marginLarge),
                Text(tr('filter_surveys_number_of_votes'), style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                SizedBox(height: marginSmall),
                Text('1 - 20+', style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium, color: kPrimaryColor)),
                SizedBox(height: marginSmall),
                CustomRangeSlider(),
                SizedBox(height: marginSmall),
                Divider(
                  thickness: 1,
                )
              ]),
        ),
      ),
    );
  }
}

