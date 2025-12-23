import 'dart:developer';

import 'package:bet/src/core/components/AuthButton.dart';
import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/core/network/states/status.dart';
import 'package:bet/src/features/Auth/Register/controller/register_controller.dart';
import 'package:bet/src/features/MainPage/controller/main_controller.dart';
import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart';
import 'package:bet/src/features/MainPage/widget/GameType.dart';
import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

class Mainpage extends StatefulWidget {
  Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var controller = GetIt.instance<MainController>();
@override
  void initState() {
    // TODO: implement initState
   controller.fetchMatch();
   controller.fetchIndex();
    super.initState();
  }
  var register_controller = GetIt.instance<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.white,
        elevation: 0,
        actions: [
          Icon(Icons.search, color: ColorName.dustyBlue),
          10.boxW,
        ],
      ),
      body: Observer(
        builder: (_) {
          if (controller.status == Status.error &&controller.statusIndex ==Status.error) {
                      return Center(child: AppText.s16w500TtM("No Internet connection"));
                    }
                    else if(controller.loadingIndex){
                      return Center(child: CircularProgressIndicator());
                    }
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  color: ColorName.white,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     Authbutton(
                        //       colors: ColorName.azureBlue,
                        //       onTap: () {},
                        //       text: AppText.s16w500TtM(
                        //         "Log in",
                        //         color: ColorName.white,
                        //       ),
                        //     ),
                        //     10.boxW,
                        //     Authbutton(
                        //       colors: ColorName.freshGreen,
                        //       onTap: () {},
                        //       text: AppText.s16w500TtM(
                        //         "Registration",
                        //         color: ColorName.white,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // 10.boxH,
                        Observer(
                          builder: (_) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Gametype(
                                  icon: Assets.images.top.image(
                                    package: "gen",
                                    width: 25,
                                    height: 25,
                                  ),
                                  title: 'Top',
                                  onTap: () {
                                    controller.change('top');
                                  },
                                  isSelect: controller.select_game == "top",
                                ),
                                Gametype(
                                  icon: Assets.images.sport.image(package: "gen"),
                                  title: "Sports",
                                  onTap: () {
                                    controller.change("sports");
                                  },
                                  isSelect: controller.select_game == "sports",
                                ),
                                Gametype(
                                  icon: Assets.images.game.image(package: "gen"),
                                  title: "Esports",
                                  onTap: () {
                                    controller.change('esport');
                                  },
                                  isSelect: controller.select_game == "esport",
                                ),
                                Gametype(
                                  icon: Assets.images.casino.image(package: "gen"),
                                  title: "Casino",
                                  onTap: () {
                                    controller.change("casino");
                                  },
                                  isSelect: controller.select_game == "casino",
                                ),
                                Gametype(
                                  icon: Assets.images.games.image(package: "gen"),
                                  isSelect: controller.select_game == "1x",
                                  title: "1xGames",
                                  onTap: () {
                                    controller.change("1x");
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    10.boxH,
                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ListView.builder(
                        itemCount: controller.index?.category?.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var category = controller.index?.category?[index];
                         
                          return Container(
                            alignment: Alignment.center,
                            width: 75,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: ColorName.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Icon(Icons.sports_basketball),
                                5.boxH,
                                Expanded(
                                  child: AppText.s14w400BdM(
                                    maxLines: 1,textAlign: TextAlign.center,
                                    category!.name??"",
                                    color: ColorName.text,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
          
                    15.boxH,
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 125,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Assets.images.polarExpress.image(
                                    package: "gen",
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                5.boxH,
                                AppText.s16w500TtS(
                                  "Sanda's Gift",
                                  color: ColorName.text,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    10.boxH,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: double.infinity,
                      height: 100,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
          
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://www.ggrasia.com/wp-content/uploads/2022/05/Wild-West-Gold-Pragmatic-e1653952729455.jpg",
                                  ),
                                  radius: 30,
                                ),
                                5.boxH,
                                AppText.s14w400BdM(
                                  "All Games",
                                  color: ColorName.text,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
          
                    15.boxH,
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.s24w600HlS("Top Events", color: ColorName.text),
                    ],
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Assets.images.match.image(
                                  package: "gen",
                                  width: 60.h,
                                  height: 60.w,
                                ),
                              ),
                            ),
                            AppText.s16w500TtM("1XChampion"),
                          ],
                        ),
                        Assets.images.fottball.image(package: "gen"),
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.boxH,
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AppText.s24w600HlS(
                        "Top Events",
                        color: ColorName.text,
                      ),
                    ),
                    10.boxH,
                    SizedBox(
                      height: 210,
                      child: ListView.builder(
                        itemCount:  controller.ticket?.matches?.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Match match = controller.ticket!.matches![index];
                          return Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: ColorName.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          controller.ticket?.matches?[index].cat?.name??"",
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
                                          child: Icon(
                                            Icons.star_border,
                                            size: 17,
                                          ),
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
                                            match.team1 ?? "",
                                            textDirection: TextDirection.rtl,
                                            maxLines: 2,
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
                                          backgroundColor:
                                              ColorName.emeraldGreen,
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
                                          backgroundColor:
                                              ColorName.emeraldGreen,
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
                                        match.team2??"",
                                        maxLines: 2,
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
                                    for (int i = 0; i <  match.options!.length; i++)
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: AppText.s12w400BdS(
                                                  maxLines: 2,
                                                  match.options?[i].optionName??"",
                                                  color: ColorName.text,
                                                ),
                                              ),
                                              AppText.s12w500LbM(
                                                match.options?[i].investAmount??"",
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
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.boxH,
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AppText.s24w600HlS(
                        "Top Events",
                        color: ColorName.text,
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
          
                          itemCount: 12,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 40,
                              padding: EdgeInsets.only(left: 8, right: 8),
                              decoration: BoxDecoration(
                                color: ColorName.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Assets.images.match.image(
                                        package: "gen",
                                        width: 40,
                                        height: 40,
                                      ),
                                      AppText.s14w500LbL(
                                        "Croatia HLM",
                                        color: ColorName.text,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: ColorName.count,
                                        child: AppText.s12w500LbM(
                                          "1",
                                          color: ColorName.text,
                                        ),
                                      ),
                                      5.boxW,
                                      Icon(
                                        Icons.star_border,
                                        color: ColorName.dustyBlue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
