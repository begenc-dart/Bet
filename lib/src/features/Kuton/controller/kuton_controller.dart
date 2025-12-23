import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'kuton_controller.g.dart';
@singleton
class KutonController = _KutonController with _$KutonController;

abstract class _KutonController with Store {
  @observable
  bool isSelect = false;
  @action
  change(bool value){
    isSelect = value;
  }
}