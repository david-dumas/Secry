part of 'all_chats_in_group_page_bloc.dart';

@freezed
class AllChatsInGroupPageEvent with _$AllChatsInGroupPageEvent {
  const factory AllChatsInGroupPageEvent.initialized(List<GeneralListCellInfoItem> cellInfoItems) = _Initialized;
  const factory AllChatsInGroupPageEvent.searchValueUpdated(String newValue) = _SearchValueUpdated;
}
