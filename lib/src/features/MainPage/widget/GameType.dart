import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class Gametype extends StatelessWidget {
  Widget icon;
  VoidCallback onTap;
  String title;
  bool isSelect;
  Gametype({
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(width: 30, height: 30, child: icon),
            2.boxH,
            AppText.s14w500LbL(
              title,
              color: isSelect ? ColorName.azureBlue : ColorName.dustyBlue,
            ),
            2.boxH,
           isSelect? Container(
              height: 5,
              width: 60,
              decoration: BoxDecoration(
                color: ColorName.azureBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ):Container(),
            
          ],
        ),
      ),
    );
  }
}
