import 'dart:developer';

import 'package:bet/src/core/local/key_value_storage_service.dart';
import 'package:bet/src/features/Auth/Login/repository/data/LoginRepository.dart';
import 'package:bet/src/features/Auth/Login/repository/dto/LoginDto.dart';
import 'package:bet/src/features/Auth/Register/repository/data/RegisterRepository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';
@singleton
class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  
  TextEditingController password_controler = TextEditingController();

  TextEditingController email_controller = TextEditingController();

  FocusNode phoneFocus = FocusNode();
  clear() {
    
    password_controler.clear();
    
    email_controller.clear();
  }
  
  final _keyValueStorageService = KeyValueStorageService();
  void _updateToken(String key, String newToken) {
    _keyValueStorageService.setAuthToken(key, newToken.toString());
  }

  Loginrepository login = Loginrepository();
  
  @action
  void loginApi(
    BuildContext context,
    GlobalKey<FormState> keys,
    VoidCallback completeCallback,
  ) {
    if (keys.currentState?.validate() ?? false) {
      final dto = Logindto(  email: email_controller.text, password: password_controler.text,);
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