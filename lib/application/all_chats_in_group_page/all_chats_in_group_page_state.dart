part of 'all_chats_in_group_page_bloc.dart';

@freezed
class AllChatsInGroupPageState with _$AllChatsInGroupPageState {
  const factory AllChatsInGroupPageState(
      {required List<GeneralListCellInfoItem> cellInfoItems, required String searchValue}) = _AllChatsInGroupPageState;

  factory AllChatsInGroupPageState.initial() => AllChatsInGroupPageState(cellInfoItems: [], searchValue: "");
}
