import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'dropdown_type.dart';

part 'filter_survey_event.dart';
part 'filter_survey_state.dart';
part 'filter_survey_bloc.freezed.dart';

@injectable
class FilterSurveyBloc extends Bloc<FilterSurveyEvent, FilterSurveyState> {
  FilterSurveyBloc() : super(FilterSurveyState.initial()) {
    on<FilterSurveyEvent>(_onEvent);
  }

  Future<void> _onEvent(FilterSurveyEvent event, Emitter<FilterSurveyState> emit) async {
    await event.map(
        initialized: (e) async {},
        sortByValueUpdated: (e) async {
          emit(state.copyWith(sortByValue: e.newValue));
        },
        numberOfVotesUpdated: (e) async {
          emit(state.copyWith(numberOfVotesLowerBound: e.lowerBound, numberOfVotesUpperBound: e.upperBound));
        },
        initialNumberOfVotesUpdated: (e) async {},
        questionTypeUpdated: (e) async {
          emit(state.copyWith(questionType: e.newValue));
        },
        resetExecuted: (e) async {
          emit(state.copyWith(
              sortByValue: DropdownType.date, numberOfVotesLowerBound: 1.0, numberOfVotesUpperBound: 20.0, questionType: "date"));
        });
  }
}
