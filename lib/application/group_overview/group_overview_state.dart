part of 'group_overview_bloc.dart';

@freezed
class GroupOverviewState with _$GroupOverviewState {
  const factory GroupOverviewState({required List<GroupOverviewRowInfo> chatInfoItems}) = _GroupOverviewState;

  factory GroupOverviewState.initial() => GroupOverviewState(chatInfoItems: []);
}
