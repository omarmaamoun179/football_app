import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_app/service/reset_api.dart';

import '../models/football_model/football_model.dart';

part 'football_state.dart';

class FootballCubit extends Cubit<FootballState> {
  FootballCubit(this.apiService) : super(FootballInitial());
  ApiService apiService;
  FootballModel? footballModel;
  void getResults() async {
    emit(FootballLoading());
    try {
      await apiService.getMatches();
      emit(Footballsuccess());
    } on Exception catch (e) {}
  }
}
