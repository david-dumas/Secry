import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/pages/general/widgets/empty_state.dart';
import 'package:secry/presentation/pages/general/widgets/general_list_cell.dart';
import 'package:secry/presentation/pages/general/widgets/general_searchbar.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/pages/home/chat_page.dart';

import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/util/search/search_helper.dart';

class AllChatsOrSurveysInGroupPage extends StatelessWidget {
  final List<GeneralListCellInfoItem> cellInfoItems;
  final TextEditingController searchBarTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String pageTitle;
  final String hintText;

  AllChatsOrSurveysInGroupPage({Key? key, required this.cellInfoItems, required this.pageTitle, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AllChatsOrSurveysInGroupPageBloc>()
        ..add(AllChatsOrSurveysInGroupPageEvent.initialized(this.cellInfoItems)),
      child: BlocBuilder<AllChatsOrSurveysInGroupPageBloc, AllChatsOrSurveysInGroupPageState>(
        builder: (context, state) {
          final filteredCellInfoItems =
              SearchHelper().getFilteredGeneralListCellInfoItems(state.cellInfoItems, state.searchValue);

          return Scaffold(
            appBar: GeneralAppbar(
              title: pageTitle,
              isSubpage: true,
              backgroundColor: globalWhite,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: pagePaddingAllSides,
                child: Column(
                  children: [
                    GeneralSearchbar(
                      formKey: _formKey,
                      searchBarTextEditingController: searchBarTextEditingController,
                      searchValue: state.searchValue,
                      hintText: hintText,
                      searchValueUpdated: (newValue) {
                        context
                            .read<AllChatsOrSurveysInGroupPageBloc>()
                            .add(AllChatsOrSurveysInGroupPageEvent.searchValueUpdated(newValue));
                      },
                    ),
                    SizedBox(height: 20),
                    Visibility(
                      visible: filteredCellInfoItems.length == 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: EmptyState(
                          title: tr('empty_state_search_no_results_title_general'),
                          description: tr('empty_state_search_no_results_description_general'),
                          icon: Icons.search_off_outlined,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: filteredCellInfoItems.length > 0,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: filteredCellInfoItems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              child: GeneralListCell(
                                listCellInfoItem: GeneralListCellInfoItem(
                                  id: filteredCellInfoItems[index].id,
                                  title: filteredCellInfoItems[index].title,
                                  description: filteredCellInfoItems[index].description,
                                  timeIndication: filteredCellInfoItems[index].timeIndication,
                                  svg: filteredCellInfoItems[index].svg,
                                ),
                              ),
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: ChatPage(
                                      title: filteredCellInfoItems[index].title,
                                      chatId: filteredCellInfoItems[index].id),
                                  withNavBar: true,
                                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
