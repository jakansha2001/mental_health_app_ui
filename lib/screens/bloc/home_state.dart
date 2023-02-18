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
    String? mood,
    HomeStatus? status,
  }) {
    return HomeState(mood: mood ?? this.mood, status: status ?? this.status);
  }

  static HomeState initial() {
    return HomeState(
      mood: '👋',
      status: HomeStatus.initial,
    );
  }
}
