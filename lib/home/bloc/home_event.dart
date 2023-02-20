part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class MoodChangedEvent extends HomeEvent {
  final String mood;

  MoodChangedEvent({required this.mood});
}
