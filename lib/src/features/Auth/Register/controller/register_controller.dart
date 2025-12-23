import 'dart:developer';

import 'package:bet/src/core/local/key_value_storage_service.dart';
import 'package:bet/src/features/Auth/Register/repository/data/RegisterRepository.dart';
import 'package:bet/src/features/Auth/Register/repository/dto/RegisterData.dart';
import 'package:bet/src/utils/ToastWidget.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'register_controller.g.dart';
@singleton
class RegisterController = _RegisterController with _$RegisterController;

abstract class _RegisterController with Store {
  TextEditingController name_controller = TextEditingController();
  TextEditingController password_controler = TextEditingController();
  TextEditingController password_conform = TextEditingController();
  TextEditingController email_controller = TextEditingController();

  FocusNode phoneFocus = FocusNode();
  clear() {
    name_controller.clear();
    password_controler.clear();
    password_conform.clear();
    email_controller.clear();
  }
  
  final _keyValueStorageService = KeyValueStorageService();
  void _updateToken(String key, String newToken) {
    _keyValueStorageService.setAuthToken(key, newToken.toString());
  }
 @observable
  ObservableFuture<String> screen = ObservableFuture.value('');
@observable
  bool loading = false;
  @observable
  bool hasData = false;
  String code = "";
  RegisterApi login = RegisterApi();
  @action
  Future<void> tokenGet() async {
    try {
      loading = true;
      final future = _keyValueStorageService.getAuthToken("token");
      
      screen = ObservableFuture(future);
      
      await future;
      hasData = screen.value!.isNotEmpty &&screen.value !=null; 
      log(screen.value.toString());
      loading = false;
    } catch (e) {
      throw Exception(e);
    }
  }
  @action
  void loginApi(
    BuildContext context,
    GlobalKey<FormState> keys,
    VoidCallback completeCallback,
  ) {
    if (keys.currentState?.validate() ?? false) {
      final dto = RegisterData( name: name_controller.text, email: email_controller.text, password: password_controler.text, password_confirmation: password_conform.text);
      try {
        ObservableFuture(login.login(dto,_updateToken))
            .then((value) async {
              ObservableMap.of(value);
             
              completeCallback();
            });
      } catch (e) {
        log(e.toString());
      }
    }
  }
}