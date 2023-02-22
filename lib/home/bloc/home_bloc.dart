import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<MoodChangedEvent>(_onMoodChangedEvent);
  }

  void _onMoodChangedEvent(
    MoodChangedEvent e,
    Emitter<HomeState> emit,
  ) {
    emit(
      //   HomeState(
      //   mood: state.mood,
      //   status: HomeStatus.loading,
      // )
      state.copyWith(
        status: HomeStatus.loading,
      ),
    );
    emit(
      state.copyWith(
        newMood: e.mood,
        status: HomeStatus.loaded,
      ),
    );
  }
}