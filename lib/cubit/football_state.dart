part of 'football_cubit.dart';

abstract class FootballState {
  const FootballState();
}

class FootballInitial extends FootballState {}

class FootballLoading extends FootballState {}

class Footballsuccess extends FootballState {
  final FootballModel footballModel;
  Footballsuccess(this.footballModel);
}
