import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'filter_survey_event.dart';
part 'filter_survey_state.dart';
part 'filter_survey_bloc.freezed.dart';

class FilterSurveyBloc extends Bloc<FilterSurveyEvent, FilterSurveyState> {
  FilterSurveyBloc() : super(FilterSurveyState.initial()) {
    on<FilterSurveyEvent>(_onEvent);
  }

  Future<void> _onEvent(
      FilterSurveyEvent event, Emitter<FilterSurveyState> emit) async {
    await event.map(
      sortByValueUpdated: (e) async {},
      numberOfVotesUpdated: (e) async {},
      questionTypeUpdated: (e) async {},
      resetExecuted: (e) async {}
    );
  }
}
