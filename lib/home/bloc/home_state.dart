part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  loaded,
}

class HomeState {
  final String mood;
  final HomeStatus status;
  final int index;

  HomeState({required this.index, required this.mood, required this.status});

  HomeState copyWith({String? newMood, HomeStatus? status, int? newIndex}) {
    return HomeState(
      mood: newMood ?? mood,
      status: status ?? this.status,
      index: newIndex ?? index,
    ); //null check by ??
  }

  static HomeState initial() {
    return HomeState(
      mood: '👋',
      status: HomeStatus.initial,
      index: 0,
    );
  }
}
//newMood == null ? mood : newMood