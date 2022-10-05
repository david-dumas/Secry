import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/bottom_navigation_section.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/custom_range_slider.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/question_type.dart';
import 'package:secry/presentation/widgets/bars/appbar_icon_type.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import '../../../constants.dart';

class FilterSurveysPage extends StatefulWidget {
  const FilterSurveysPage({Key? key}) : super(key: key);

  @override
  State<FilterSurveysPage> createState() => _FilterSurveysPageState();
}

class _FilterSurveysPageState extends State<FilterSurveysPage> {
  String _dropdownValue = 'date';
  double _startValue = 1;
  double _endValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('filter_surveys_title'),
        isSubpage: true,
        backgroundColor: globalWhite,
        isShowingBottomBorder: true,
        icon: AppbarIconType.close,
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
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: pagePaddingAllSides,
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tr('filter_surveys_sort_by'),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
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
                                DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_date')), value: 'date'),
                                DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_alphabetic')), value: 'alphabetic')
                              ]),
                        ),
                        SizedBox(height: marginLarge),
                        Text(tr('filter_surveys_number_of_votes'),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                        SizedBox(height: marginSmall),
                        Text('${_startValue.round()} - ${_endValue.round()}+',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium, color: kPrimaryColor)),
                        SizedBox(height: marginSmall),
                        CustomRangeSlider(startValue: _startValue, endValue: _endValue),
                        SizedBox(height: marginSmall),
                        Divider(thickness: 1),
                        SizedBox(height: marginLarge),
                        Text(tr('filter_surveys_question_type_title'),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                        SizedBox(height: marginLarge),
                        QuestionType(
                            title: tr('filter_surveys_question_type_all_questions_title'),
                            subtitle: tr('filter_surveys_question_type_all_questions_subtitle')),
                        SizedBox(height: marginLarge),
                        QuestionType(
                            title: tr('filter_surveys_question_type_closed_questions_title'),
                            subtitle: tr('filter_surveys_question_type_closed_questions_subtitle')),
                        SizedBox(height: marginLarge),
                        QuestionType(
                            title: tr('filter_surveys_question_type_open_questions_title'),
                            subtitle: tr('filter_surveys_question_type_open_questions_subtitle'))
                      ]),
                ),
              ),
            ),
          ),
          BottomNavigationSection()
        ],
      ),
    );
  }
}
