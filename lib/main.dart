import 'package:bet/src/core/local/key_value_storage_base.dart';
import 'package:bet/src/features/Auth/Register/controller/register_controller.dart';
import 'package:bet/src/features/XBet/pages/Xbet.dart';
import 'package:bet/src/product/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

void main(List<String> args)async {
  
    WidgetsFlutterBinding.ensureInitialized();
      await KeyValueStorageBase.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

   configureDependencies();
   await GetIt.instance<RegisterController>().tokenGet();
  runApp(Xbet());
}