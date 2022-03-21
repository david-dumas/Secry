import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:secry/domain/users/group_user.dart';
import 'package:secry/domain/users/i_users_repository.dart';

import 'package:secry/domain/general/pagination_info.dart';

part 'global_search_event.dart';
part 'global_search_state.dart';
part 'global_search_bloc.freezed.dart';

@injectable
class GlobalSearchBloc extends Bloc<GlobalSearchEvent, GlobalSearchState> {
  final IUsersRepository _usersRepository;

  GlobalSearchBloc(this._usersRepository) : super(GlobalSearchState.initial()) {
    on<GlobalSearchEvent>(_onEvent);
  }

  Future<void> _onEvent(GlobalSearchEvent event, Emitter<GlobalSearchState> emit) async {
    await event.map(initialized: (e) async {
      getUsersForSearchQuery(
          searchValue: state.searchValue,
          paginationPageNumber: state.searchUsersPaginationPageNumber,
          paginationPageSize: state.searchUsersPaginationPageSize);
    }, searchValueUpdated: (e) async {
      // TODO fetch after X seconds without typing
      emit(state.copyWith(searchValue: e.newValue));

      getUsersForSearchQuery(
          searchValue: e.newValue,
          paginationPageNumber: state.searchUsersPaginationPageNumber,
          paginationPageSize: state.searchUsersPaginationPageSize);
    }, usersForSearchQueryUpdated: (e) async {
      emit(state.copyWith(usersForSearchQuery: e.newUsers));
    }, searchUsersPaginationPageNumberUpdated: (e) async {
      emit(state.copyWith(searchUsersPaginationPageNumber: e.newValue));
    }, pageRefreshed: (e) async {
      getUsersForSearchQuery(
          searchValue: state.searchValue,
          paginationPageNumber: state.searchUsersPaginationPageNumber,
          paginationPageSize: state.searchUsersPaginationPageSize);
    }, scrolledToLoadMoreItems: (e) async {
      if (state.paginationInfo != null) {
        if (state.paginationInfo!.hasNextPage) {
          emit(state.copyWith(searchUsersPaginationPageNumber: state.searchUsersPaginationPageNumber + 1));
          getUsersForSearchQuery(
              searchValue: state.searchValue,
              paginationPageNumber: state.searchUsersPaginationPageNumber,
              paginationPageSize: state.searchUsersPaginationPageSize);
        }
      }
    }, isFetchingInitialDataUpdated: (e) async {
      emit(state.copyWith(isFetchingInitialData: e.isFetching));
    }, isFetchingMoreDataForScrollDownUpdated: (e) async {
      emit(state.copyWith(isFetchingMoreDataForScrollDown: e.isFetching));
    }, isDataFetchedUpdated: (e) async {
      emit(state.copyWith(isDataFetched: e.isFetched));
    });
  }

  Future<void> getUsersForSearchQuery(
      {required String searchValue, required int paginationPageNumber, required int paginationPageSize}) async {
    if (paginationPageNumber == 1) {
      add(GlobalSearchEvent.isFetchingInitialDataUpdated(true));
    } else {
      add(GlobalSearchEvent.isFetchingMoreDataForScrollDownUpdated(true));
    }

    final usersFromGlobalSearch = await _usersRepository.getUsersForSearchQuery(
        searchQuery: searchValue, pageNumber: paginationPageNumber, pageSize: paginationPageSize);

    add(GlobalSearchEvent.usersForSearchQueryUpdated(usersFromGlobalSearch));
    add(GlobalSearchEvent.isDataFetchedUpdated(true));

    if (paginationPageNumber == 1) {
      add(GlobalSearchEvent.isFetchingInitialDataUpdated(false));
    } else {
      add(GlobalSearchEvent.isFetchingMoreDataForScrollDownUpdated(false));
    }
  }
}
