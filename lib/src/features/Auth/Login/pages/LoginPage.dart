import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/Auth/Login/controler/login_controller.dart';
import 'package:bet/src/features/Auth/Register/pages/Register.dart';
import 'package:bet/src/features/BottomNav/presentation/BottomNav.dart';
import 'package:bet/src/features/XBet/pages/Xbet.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final controller = GetIt.instance<LoginController>();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 50, left: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      child: Icon(Icons.arrow_back, color: ColorName.white),
                    ),
                    Assets.images.login.image(package: "gen"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: AppText.s28w600HlM("Log in", color: ColorName.text2),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: controller.email_controller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Emailynyz"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: controller.password_controler,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Acar soziniz"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.loginApi(context, _formKey, () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNav()),
                        (vla) => false,
                      );
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: ColorName.dustyBlue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: AppText.s16w500TtM(
                        "Login",
                        color: ColorName.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.s16w500TtM(
                  "Don't have an account?",
                  color: ColorName.text,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: AppText.s16w500TtM("Register", color: ColorName.text2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
