import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class Kutontabbar extends StatelessWidget {
  String title;
  bool isSelect;
  VoidCallback onTap;
   Kutontabbar({required this.title,required this.isSelect,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                          child: InkWell(
                            onTap: onTap,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: isSelect? ColorName.text2:Colors.transparent,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(child: AppText.s16w500TtM(title,color: ColorName.white,))),
                          ),
                        );
  }
}