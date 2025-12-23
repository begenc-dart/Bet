import 'package:bet/src/features/Auth/Login/pages/LoginPage.dart';
import 'package:bet/src/features/Auth/Register/controller/register_controller.dart';
import 'package:bet/src/features/Auth/Register/pages/Register.dart';
import 'package:bet/src/features/BottomNav/presentation/BottomNav.dart';
import 'package:bet/src/features/MainPage/pages/MainPage.dart';
import 'package:bet/src/product/init/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class Xbet extends StatelessWidget {
  Xbet({super.key});
  var controller = GetIt.instance<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return Observer(
          builder: (_) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: appTheme(),
              home:!controller.hasData? Loginpage():BottomNav(),
            );
          },
        );
      },
    );
  }
}
