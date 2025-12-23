import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/GeneratedKuton/presentation/GeneratedKuton.dart';
import 'package:bet/src/features/Kuton/controller/kuton_controller.dart';
import 'package:bet/src/features/Kuton/widget/KutonTabbar.dart';
import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

class Kuton extends StatelessWidget {
  Kuton({super.key});
  var controller = GetIt.instance<KutonController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                color: ColorName.white,
                child: Column(
                  children: [
                    AppText.s20w500TtL("Экспресс дня", color: ColorName.text),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ColorName.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Observer(
                        builder: (_) {
                          return Row(
                            children: [
                              Kutontabbar(
                                title: "LIVE",
                                isSelect: !controller.isSelect,
                                onTap: () {
                                  controller.change(false);
                                },
                              ),
                              Kutontabbar(
                                title: "линия",
                                isSelect: controller.isSelect,
                                onTap: () {
                                  controller.change(true);
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Container(

                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(children: [
                        Row(
                          children: [
                            for(int i =0;i<4;i++)Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Assets.images.ball0.image(package: "gen"),
                            )
                          ],
                        ),
                        5.boxH,
                        AppText.s14w400BdM("Экспресс LIVE",color: ColorName.text,)
                      ],)
                    ],
                  ),
                );
              },
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}


class ExpressDayPage extends StatelessWidget {
   ExpressDayPage({super.key});
 var controller = GetIt.instance<KutonController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6F9),
        
      
        body: Column(
          children: [
            
      Container(
                  color: ColorName.white,
                  child: Column(
                    children: [
                      AppText.s20w500TtL("Экспресс дня", color: ColorName.text),
                      Container(
                        width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: ColorName.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Observer(
                          builder: (_) {
                            return Row(
                              children: [
                                Kutontabbar(
                                  title: "LIVE",
                                  isSelect: !controller.isSelect,
                                  onTap: () {
                                    controller.change(false);
                                  },
                                ),
                                Kutontabbar(
                                  title: "линия",
                                  isSelect: controller.isSelect,
                                  onTap: () {
                                    controller.change(true);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
             
          
      
            const SizedBox(height: 16),
      
            /// List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _ExpressCard(
                    title: 'Экспресс LIVE 1',
                    events: 4,
                    coef: '7.318',
                  ),
                  _ExpressCard(
                    title: 'Экспресс LIVE 2',
                    events: 4,
                    coef: '5.283',
                  ),
                  _ExpressCard(
                    title: 'Экспресс LIVE 3',
                    events: 4,
                    coef: '7.575',
                  ),
                  _ExpressCard(
                    title: 'Экспресс LIVE 4',
                    events: 4,
                    coef: '8.397',
                  ),
                ],
              ),
            ),
          ],
        ),
      
        /// Bottom Navigation
      
      ),
    );
  }

  static Widget _tabItem(String text, bool active) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: active ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(22),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: active ? Colors.white : Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

/// Card widget
class _ExpressCard extends StatelessWidget {
  final String title;
  final int events;
  final String coef;

  const _ExpressCard({
    required this.title,
    required this.events,
    required this.coef,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CouponGenerationPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            /// Icons
            
      
          
      
            /// Title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
              children: const [
                Icon(Icons.sports_soccer, size: 18, color: Colors.blueGrey),
                SizedBox(width: 4),
                Icon(Icons.sports_baseball, size: 18, color: Colors.blueGrey),
                SizedBox(width: 4),
                Icon(Icons.percent, size: 18, color: Colors.blueGrey),
              ],
            ),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                   
               
                ],
              ),
            ),
      
            /// Coef
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                   Text(
                    'События: $events',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                Row(
                  children: [
                    const Text(
                      'Коэф.',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                     Text(
                  coef,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  ],
                ),
               
              ],
            ),
      
            const SizedBox(width: 8),
            const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
