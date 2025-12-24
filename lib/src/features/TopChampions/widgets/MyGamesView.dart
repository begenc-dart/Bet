import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart' as dto;
import 'package:bet/src/features/TopChampions/widgets/PreMatchEventCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MyGamesView extends StatelessWidget {
  final List<dto.Match> matches;
  final VoidCallback? onMatchTap;

  const MyGamesView({super.key, required this.matches, this.onMatchTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // My bets
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF408CDC),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 16.w),
              AppText.s16w500TtM("My bets", color: ColorName.text),
            ],
          ),
        ),

        // My teams Title
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: AppText.s16w500TtM("My teams", color: ColorName.text),
        ),

        // My teams list
        SizedBox(
          height: 90.h,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            children: [
              _buildChangeButton(),
              _buildTeamItem(
                "Arsenal",
                Assets.images.fottball.provider(),
              ), // Placeholder logos
              _buildTeamItem("Chelsea", Assets.images.fottball.provider()),
              _buildTeamItem("Liverpool", Assets.images.fottball.provider()),
              _buildTeamItem(
                "Manchester City",
                Assets.images.fottball.provider(),
              ),
            ],
          ),
        ),

        // Teams' matches Title
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
          child: AppText.s16w500TtM("Teams' matches"),
        ),

        // Teams' matches list (passed from parent or mock)
        ...matches
            .map(
              (match) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: PreMatchEventCard(match: match, onTap: onMatchTap),
              ),
            )
            .toList(),

        SizedBox(height: 30.h),
      ],
    );
  }

  Widget _buildChangeButton() {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        children: [
          Container(
            width: 55.w,
            height: 55.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(Icons.tune, color: const Color(0xFF408CDC)),
          ),
          SizedBox(height: 5.h),
          Text(
            "Change",
            style: TextStyle(fontSize: 10.sp, color: ColorName.text),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamItem(String name, ImageProvider logo) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        children: [
          Container(
            width: 55.w,
            height: 55.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(Icons.sports_soccer, color: const Color(0xFF408CDC)),
          ),
          SizedBox(height: 5.h),
          Text(
            name,
            style: TextStyle(fontSize: 10.sp, color: ColorName.text),
          ),
        ],
      ),
    );
  }
}
