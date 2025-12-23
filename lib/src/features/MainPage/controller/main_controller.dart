import 'dart:developer';

import 'package:bet/src/core/network/states/status.dart';
import 'package:bet/src/features/MainPage/repository/data/MatchData.dart';
import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'main_controller.g.dart';
@singleton
class MainController = _MainController with _$MainController;

abstract class _MainController with Store {
  @observable
  String select_game ="top";
  @action
  change(String value){
    select_game = value;
  }
   MatchData api = MatchData();
  @observable
  MatchDto? ticket ;
  @observable
  bool loading = false;
  @observable
  Status status = Status.none;

  @action
  Future<bool> fetchMatch() async {
    try {
      loading = true;
      status = Status.loading;
      final result = await api.getMatchData();
      log(result.toString());  
          ticket = result;
      status = Status.completed;
      loading = false;
      return true;
    } catch (e) {
      status = Status.error;
        loading = false;
      return false;
    }
  }
}