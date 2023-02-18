import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
      state.copyWith(
        status: HomeStatus.loading,
      ),
    );
    emit(
      state.copyWith(
        mood: e.mood,
        status: HomeStatus.loaded,
      ),
    );
  }
}
