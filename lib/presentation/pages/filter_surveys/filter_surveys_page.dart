import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import '../../../constants.dart';

class FilterSurveysPage extends StatefulWidget {
  const FilterSurveysPage({Key? key}) : super(key: key);

  @override
  State<FilterSurveysPage> createState() => _FilterSurveysPageState();
}

class _FilterSurveysPageState extends State<FilterSurveysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('filter_surveys_title'),
        isSubpage: true,
        backgroundColor: globalWhite,
        isShowingBottomBorder: true,
      ),
      body: Column(
        children: [
          Text('Testje')
        ],
      ),
    );
  }
}

