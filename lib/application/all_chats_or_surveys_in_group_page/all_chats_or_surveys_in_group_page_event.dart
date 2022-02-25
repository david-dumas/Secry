part of 'all_chats_or_surveys_in_group_page_bloc.dart';

@freezed
class AllChatsOrSurveysInGroupPageEvent with _$AllChatsOrSurveysInGroupPageEvent {
  const factory AllChatsOrSurveysInGroupPageEvent.initialized(List<GeneralListCellInfoItem> cellInfoItems) =
      _Initialized;
  const factory AllChatsOrSurveysInGroupPageEvent.searchValueUpdated(String newValue) = _SearchValueUpdated;
}
