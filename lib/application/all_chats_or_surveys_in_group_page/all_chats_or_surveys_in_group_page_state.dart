part of 'all_chats_or_surveys_in_group_page_bloc.dart';

@freezed
class AllChatsOrSurveysInGroupPageState with _$AllChatsOrSurveysInGroupPageState {
  const factory AllChatsOrSurveysInGroupPageState(
      {required List<GeneralListCellInfoItem> cellInfoItems,
      required String searchValue}) = _AllChatsOrSurveysInGroupPageState;

  factory AllChatsOrSurveysInGroupPageState.initial() =>
      AllChatsOrSurveysInGroupPageState(cellInfoItems: [], searchValue: "");
}
