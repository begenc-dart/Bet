import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/Auth/Register/controller/register_controller.dart';
import 'package:bet/src/features/XBet/pages/Xbet.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

class Register extends StatelessWidget {
  Register({super.key});
  var controller= GetIt.instance<RegisterController>();
    var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.s16w500TtM("Registration",color: ColorName.text2,),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: ColorName.text2,)),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
              Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorName.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.name_controller,
                        decoration: InputDecoration(
                          labelText: "Adynyz"
                        ),
                      ),
                      TextFormField(
                        controller: controller.email_controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Emailynyz"
                        ),
                      ),
                      TextFormField(
                        controller: controller.password_controler,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Acar soziniz",
                        ),
                      ),
                      TextFormField(
                        controller: controller.password_conform,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Acar soziniz tassyklan",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          controller.loginApi(context, _formKey, (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Xbet()), (vla)=>true);
          });
        },
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
          color: ColorName.freshGreen,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: AppText.s16w500TtM("Register",color: ColorName.white,)),),
      ),
    );
  }
}