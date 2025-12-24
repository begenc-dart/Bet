import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/MainPage/controller/main_controller.dart';
import 'package:bet/src/features/TopChampions/widgets/PreMatchEventCard.dart';
import 'package:bet/src/features/TopChampions/widgets/TopChampionsHeader.dart';
import 'package:bet/src/features/TopChampions/widgets/WhoWillWinSection.dart';
import 'package:bet/src/features/TopChampions/widgets/StatisticsView.dart';
import 'package:bet/src/features/TopChampions/widgets/MyGamesView.dart';
import 'package:bet/src/features/MatchDetail/pages/MatchDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart'
    as dto; // Alias if needed

class TopChampionsPage extends StatefulWidget {
  const TopChampionsPage({super.key});

  @override
  State<TopChampionsPage> createState() => _TopChampionsPageState();
}

class _TopChampionsPageState extends State<TopChampionsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final MainController controller = GetIt.instance<MainController>();

  final List<String> dates = [
    "9\nDecember",
    "10\nDecember",
    "11\nDecember",
    "20\nJanuary\n2026",
    "21\nJanuary\n2026",
    "22\nJanuary\n2026",
  ];
  int selectedDateIndex = 3; // "20 January 2026" selected

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.bg,
      body: CustomScrollView(
        slivers: [
          // Header with Image and Title
          TopChampionsHeader(tabController: _tabController),

          // Schedule Tab Content
          if (_tabController.index == 0) ...[
            // Date Selector
            SliverToBoxAdapter(
              child: Container(
                height: 80.h,
                padding: EdgeInsets.only(bottom: 10.h),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: dates.length,
                  separatorBuilder: (_, __) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedDateIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDateIndex = index;
                        });
                      },
                      child: Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Color(0xFF5BA4E6)
                              : ColorName.white,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          dates[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                            fontSize: 10.sp,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // "Pre-match events" Title
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: AppText.s16w500TtM("Pre-match events"),
              ),
            ),

            // List of Matches
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final length = controller.ticket?.matches?.length ?? 0;
                  final match = length > 0
                      ? controller.ticket!.matches![index % length]
                      : dto.Match(
                          team1: "Kairat",
                          team2: "Club Brugge",
                          cat: dto.Cat(name: "UEFA Champions League"),
                          options: [
                            dto.Option(optionName: "W1", investAmount: "5.53"),
                            dto.Option(optionName: "X", investAmount: "4.47"),
                            dto.Option(optionName: "W2", investAmount: "1.636"),
                          ],
                        );

                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    child: PreMatchEventCard(
                      match: match,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MatchDetailPage(),
                          ),
                        );
                      },
                    ),
                  );
                },
                childCount: controller.ticket?.matches?.isEmpty ?? true
                    ? 4
                    : (controller.ticket?.matches?.length ??
                          4), // Fallback to 4 mock items
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 40.h),
                child: const WhoWillWinSection(),
              ),
            ),
          ] else if (_tabController.index == 2) ...[
            // Statistics Tab Content

            // Standings Card
            SliverToBoxAdapter(child: const StandingsCard()),

            // "Top players" Title
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: AppText.s16w500TtM("Top players"),
              ),
            ),

            // Top Players List
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                // Mock players data
                final players = [
                  {
                    'rank': 1,
                    'name': 'Kylian Mbappe',
                    'country': 'France',
                    'gm': '5',
                    'gl': '9',
                    'photo':
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6A5N_H-Noe2G6R_68G7_x7B6J_o7_58-69w&s',
                  },
                  {
                    'rank': 2,
                    'name': 'Леандру Андраде',
                    'country': 'Cape Verde',
                    'gm': '12',
                    'gl': '6',
                    'photo': null,
                  },
                  {
                    'rank': 3,
                    'name': 'Barnabas Varga',
                    'country': 'Hungary',
                    'gm': '6',
                    'gl': '6',
                    'photo':
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-6R_68G7_x7B6J_o7_58-69w&s',
                  },
                  {
                    'rank': 4,
                    'name': 'Erling Braut Haaland',
                    'country': 'Norway',
                    'gm': '6',
                    'gl': '6',
                    'photo':
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9A5N_H-Noe2G6R_68G7_x7B6J_o7_58-69w&s',
                  },
                ];

                final player = players[index % players.length];

                return TopPlayerRow(
                  rank: player['rank'] as int,
                  name: player['name'] as String,
                  country: player['country'] as String,
                  gm: player['gm'] as String,
                  gl: player['gl'] as String,
                  image: player['photo'] != null
                      ? NetworkImage(player['photo'] as String)
                      : null,
                );
              }, childCount: 4),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 40.h)),
          ] else if (_tabController.index == 1) ...[
            // My Games Tab Content
            SliverToBoxAdapter(
              child: MyGamesView(
                matches: [
                  dto.Match(
                    team1: "Bodo-Glimt",
                    team2: "Manchester City",
                    cat: dto.Cat(
                      name: "UEFA Champions League. League phase. Round 7",
                    ),
                    options: [
                      dto.Option(optionName: "W1", investAmount: "7.31"),
                      dto.Option(optionName: "X", investAmount: "5.69"),
                      dto.Option(optionName: "W2", investAmount: "1.423"),
                    ],
                  ),
                ],
                onMatchTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailPage(),
                    ),
                  );
                },
              ),
            ),
          ] else ...[
            // Fallback
            const SliverToBoxAdapter(child: SizedBox.shrink()),
          ],
        ],
      ),
    );
  }
}
