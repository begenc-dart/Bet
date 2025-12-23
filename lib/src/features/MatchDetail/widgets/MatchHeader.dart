import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MatchHeader extends StatelessWidget {
  const MatchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorName.text, // Dark blue background
        // image: DecorationImage(
        //   image: Assets.images.match.provider(), // Background image
        //   fit: BoxFit.cover,
        //   colorFilter: ColorFilter.mode(
        //     ColorName.text.withOpacity(0.85),
        //     BlendMode.darken, // Darken the image
        //   ),
        // ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Content padding top for status bar area (approx)
          SizedBox(height: 100.h),

          // League Info
          Column(
            children: [
              AppText.s16w500TtM(
                "Football. England.\nLeague Cup",
                color: ColorName.white,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.h),
              AppText.s12w400BdS(
                "Round of 8. England",
                color: ColorName.white.withOpacity(0.7),
              ),
            ],
          ),

          SizedBox(height: 20.h),

          // Teams & Score
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTeam(
                  "Arsenal",
                  Assets.images.fottball.provider(), // Placeholder
                ),
                Column(
                  children: [
                    AppText.s24w600HlS("VS", color: ColorName.white),
                    SizedBox(height: 8.h),
                    AppText.s12w400BdS(
                      "Starts in",
                      color: ColorName.white.withOpacity(0.7),
                    ),
                    AppText.s20w500TtL("02 : 31 : 53", color: ColorName.white),
                    SizedBox(height: 8.h),
                    AppText.s12w400BdS(
                      "24.12.2025 (01:00)",
                      color: ColorName.white,
                    ),
                  ],
                ),
                _buildTeam(
                  "Crystal Palace",
                  Assets.images.fottball.provider(), // Placeholder
                ),
              ],
            ),
          ),

          SizedBox(height: 24.h),

          // Tabs (Handicap, Players, etc.)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                _buildTab("Handicap", true),
                _buildTab("Players", false),
                _buildTab("Goals", false),
                _buildTab("Intervals", false),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          // Sub Tabs (2nd half, Offsides...)
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            color: Colors.black.withOpacity(0.3),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.list, color: ColorName.white, size: 20.sp),
                  SizedBox(width: 20.w),
                  _buildSubTab("2nd half"),
                  _buildSubTab("Offsides"),
                  _buildSubTab("Offsides. 1st half"),
                  _buildSubTab("VAR Checks"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeam(String name, ImageProvider logo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            // Image(image: logo, width: 60.w, height: 60.w),
            Icon(Icons.sports_soccer, size: 60.w, color: Colors.white),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(
                Icons.star_border,
                color: Colors.blue,
                size: 20.sp,
              ), // Star icon
            ),
          ],
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 80.w,
          // fixed maxLines typo and AppText
          child: AppText.s14w400BdM(
            name,
            fontWeight: FontWeight.w500,
            color: ColorName.white,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildTab(String text, bool isSelected) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      // fixed AppText
      child: AppText.s14w400BdM(
        text,
        fontWeight: FontWeight.w500,
        color: ColorName.white,
      ),
    );
  }

  Widget _buildSubTab(String text) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      // fixed AppText
      child: AppText.s12w400BdS(text, color: ColorName.white.withOpacity(0.7)),
    );
  }
}
