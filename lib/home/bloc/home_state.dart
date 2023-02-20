part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  loaded,
}

class HomeState {
  final String mood;
  final HomeStatus status;

  HomeState({required this.mood, required this.status});

  HomeState copyWith({
    String? newMood,
    HomeStatus? status,
  }) {
    return HomeState(mood: newMood ?? mood, status: status ?? this.status); //null check by ??
  }

  static HomeState initial() {
    return HomeState(
      mood: '👋',
      status: HomeStatus.initial,
    );
  }
}
//newMood == null ? mood : newMood