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
}