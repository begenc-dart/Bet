import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart' as dto;
import 'package:bet/src/features/TopChampions/widgets/PreMatchEventCard.dart';
import 'package:bet/src/features/Search/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class LeagueMatchesPage extends StatelessWidget {
  final String leagueName;

  const LeagueMatchesPage({super.key, required this.leagueName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorName.text),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          leagueName,
          style: TextStyle(
            color: ColorName.text,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: ColorName.text.withOpacity(0.7)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.play_circle_filled,
              color: ColorName.text.withOpacity(0.7),
            ),
            onPressed: () {},
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        itemCount: 5,
        itemBuilder: (context, index) {
          // Mock matches for the league
          final match = dto.Match(
            team1: index % 2 == 0 ? "Indy +" : "Sounders +",
            team2: index % 2 == 0 ? "Louisville +" : "Bulls +",
            cat: dto.Cat(
              name: "$leagueName. ${index % 2 == 0 ? "3x3" : "5x5"}",
            ),
            options: [
              dto.Option(
                optionName: "W1",
                investAmount: index % 2 == 0 ? "10" : "1.47",
              ),
              dto.Option(
                optionName: "X",
                investAmount: index % 2 == 0 ? "10" : "4.97",
              ),
              dto.Option(
                optionName: "W2",
                investAmount: index % 2 == 0 ? "1.002" : "4.99",
              ),
            ],
          );

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            child: PreMatchEventCard(
              match: match,
              onTap: () {
                // Navigate to match detail if needed
              },
            ),
          );
        },
      ),
    );
  }
}
