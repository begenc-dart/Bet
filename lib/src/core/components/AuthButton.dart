import 'package:flutter/material.dart';

class Authbutton extends StatelessWidget {
  Color colors;
  VoidCallback onTap;
  Widget text;
   Authbutton({required this.colors,required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                        child: InkWell(
                          onTap: onTap,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colors
                            ),
                          child:Center(child: text) ,),
                        ),
                        
                      );
  }
}