import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/Favourity/Widget/FavourityCategory.dart';
import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class Favourity extends StatelessWidget {
  const Favourity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: ColorName.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                color: ColorName.bg,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: ColorName.freshGreen,
                                    child: Icon(Icons.add, color: ColorName.white),
                                  ),
                                  AppText.s11w500LbS(
                                    "100 TMT",
                                    color: ColorName.text,
                                  ),
                                ],
                              ),
                            ),
                            40.boxW,
                            AppText.s14w400BdM(
                              "избранное",
                              color: ColorName.text2,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.delete, color: ColorName.iconColor),
                        ),
                      ],
                    ),
                 10.boxH,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Favouritycategory(icon: Assets.images.sobita.image(package: "gen",width: 30,height: 30), title: "События"),
                  Favouritycategory(icon: Assets.images.razno.image(package: "gen",width: 30,height: 30), title: "Разно"),
                  Favouritycategory(icon: Assets.images.eyes.image(package: "gen",width: 30,height: 30), title: "Разно"),
                  Favouritycategory(icon: Assets.images.see.image(package: "gen",width: 30,height: 30), title: "Разно"),
                  ],
                 )
                  ],
                ),
              ),
            ),
            SliverList.builder(itemBuilder: (context,index){
              return Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, right: 10,top: 10),
                        decoration: BoxDecoration(
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Assets.images.sport.image(
                                      package: "gen",
                                      width: 20,
                                      height: 20,
                                    ),
                                    8.boxW,
                                    AppText.s14w400BdM(
                                      "Croatio.HLM",
                                      color: ColorName.text,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorName.bg,
                                      radius: 15,
                                      child: Icon(
                                        Icons.ondemand_video_rounded,
                                        size: 17,
                                      ),
                                    ),
                                    5.boxW,
                                    CircleAvatar(
                                      backgroundColor: ColorName.bg,
                                      radius: 15,
                                      child: Icon(
                                        Icons.notifications_none_outlined,
                                        size: 17,
                                      ),
                                    ),
                                    5.boxW,
                                    CircleAvatar(
                                      backgroundColor: ColorName.bg,
                                      radius: 15,
                                      child: Icon(Icons.star_border, size: 17),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            15.boxH,
                            Row(
                              children: [
                                Expanded(
                                  child:
                                      // AppText.s16w400BdL("NK Varazdin", color: ColorName.text,)
                                      Text(
                                        "NK Varazdin",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: ColorName.text,
                                          fontSize: 16,
                                        ),
                                      ),
                                ),
                                5.boxW,
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: ColorName.emeraldGreen,
                                      child: Icon(
                                        Icons.person,
                                        color: ColorName.white,
                                      ),
                                    ),
                                    7.boxW,
                                    AppText.s16w400BdL(
                                      "0 : 0",
                                      color: ColorName.text,
                                    ),
                                    7.boxW,
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: ColorName.emeraldGreen,
                                      child: Icon(
                                        Icons.person,
                                        color: ColorName.white,
                                      ),
                                    ),
                                  ],
                                ),
                                5.boxW,
                                Expanded(
                                  child: AppText.s16w400BdL(
                                    "NK Istra 1961",
                                    color: ColorName.text,
                                  ),
                                ),
                              ],
                            ),
                            5.boxH,
                            Center(
                              child: AppText.s12w400BdS(
                                "1st half, time elapsed 17:30 (0-0)",
                                color: ColorName.text,
                              ),
                            ),
                            AppText.s14w400BdM(
                              "1x2",
                              fontWeight: FontWeight.w500,
                              color: ColorName.text,
                              textAlign: TextAlign.left,
                            ),
                            8.boxH,
                            Row(
                              children: [
                                for (int i = 0; i < 3; i++)
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 3,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorName.bg,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppText.s12w400BdS(
                                            "W1",
                                            color: ColorName.text,
                                          ),
                                          AppText.s12w500LbM(
                                            "2.229",
                                            color: ColorName.red,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                 
            })
          ],
        ),
      ),
    );
  }
}
