import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/homepage/homepage_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/presentation/widgets/bars/appbar_trailing_icon_type.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';

import 'package:secry/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return BlocProvider(
          create: (context) => getIt<HomepageBloc>()..add(const HomepageEvent.initialized()),
          child: BlocBuilder<HomepageBloc, HomepageState>(
            builder: (context, state) {
              return Scaffold(
                appBar: GeneralAppbar(
                  title: tr(mainState.currentTitleTagForSelectedIndex),
                  backgroundColor: globalWhite,
                  trailingIconType: AppbarTrailingIconType.search,
                ),
                body: SingleChildScrollView(
                  child: GroupSection(
                    title: tr('home_my_groups'),
                    amountOfGroups: state.privateGroupsRowsInfo.length,
                    groupsInfo: state.privateGroupsRowsInfo,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
