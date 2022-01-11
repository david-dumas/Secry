import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class SavedChatsAndSurveysPage extends StatelessWidget {
  const SavedChatsAndSurveysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return Scaffold(
          appBar: GeneralAppbar(
            title: tr(mainState.currentTitleTagForSelectedIndex),
            backgroundColor: globalWhite,
          ),
        );
      },
    );
  }
}
