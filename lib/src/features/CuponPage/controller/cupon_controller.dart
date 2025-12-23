import 'package:bet/src/core/network/states/status.dart';
import 'package:bet/src/features/CuponPage/repository/CuponRepository.dart';
import 'package:bet/src/features/CuponPage/repository/dto/ticket_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'cupon_controller.g.dart';
@singleton
class CuponController = _CuponController with _$CuponController;

abstract class _CuponController with Store {
   Cuponrepository api = Cuponrepository();
  @observable
  TicketDto? favourity ;
  @observable
  bool loading = false;
  @observable
  Status status = Status.none;

  @action
  Future<bool> fetchCupon() async {
    try {
      loading = true;
      status = Status.loading;
      final result = await api.getFavourityProduct();
      
      favourity = result;
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