import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/all_chats_in_group_page/all_chats_in_group_page_bloc.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/pages/general/widgets/general_list_cell.dart';
import 'package:secry/presentation/pages/general/widgets/general_searchbar.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/presentation/pages/home/chat_page.dart';

import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/util/search/search_helper.dart';

class AllChatsInGroupPage extends StatelessWidget {
  final List<GeneralListCellInfoItem> cellInfoItems;
  final TextEditingController searchBarTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AllChatsInGroupPage({Key? key, required this.cellInfoItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AllChatsInGroupPageBloc>()..add(AllChatsInGroupPageEvent.initialized(this.cellInfoItems)),
      child: BlocBuilder<AllChatsInGroupPageBloc, AllChatsInGroupPageState>(
        builder: (context, state) {
          return Scaffold(
            appBar: GeneralAppbar(
              title: tr('home_all_chats'),
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
                      hintText: '${tr('action_search_chats')}...',
                      searchValueUpdated: (newValue) {
                        context
                            .read<AllChatsInGroupPageBloc>()
                            .add(AllChatsInGroupPageEvent.searchValueUpdated(newValue));
                      },
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: SearchHelper()
                          .getFilteredGeneralListCellInfoItems(state.cellInfoItems, state.searchValue)
                          .length,
                      itemBuilder: (context, index) {
                        final cellInfoItem =
                            SearchHelper().getFilteredGeneralListCellInfoItems(state.cellInfoItems, state.searchValue);

                        return GestureDetector(
                            child: GeneralListCell(
                              listCellInfoItem: GeneralListCellInfoItem(
                                id: cellInfoItem[index].id,
                                title: cellInfoItem[index].title,
                                description: cellInfoItem[index].description,
                                timeIndication: cellInfoItem[index].timeIndication,
                                svg: cellInfoItem[index].svg,
                              ),
                            ),
                            onTap: () => {
                                  pushNewScreen(
                                    context,
                                    screen:
                                        ChatPage(title: cellInfoItems[index].title, chatId: cellInfoItems[index].id),
                                    withNavBar: true,
                                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                  )
                                });
                      },
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
