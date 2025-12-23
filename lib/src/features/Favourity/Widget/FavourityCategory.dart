import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class Favouritycategory extends StatelessWidget {
  Widget icon; 
  String title;
   Favouritycategory({required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Column(
                      children: [
                        icon,
                        AppText.s12w500LbM(title,)
                      ],
                    );
  }
}