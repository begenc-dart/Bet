import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bet/src/core/components/app_text.dart';

class MatchHeader extends StatefulWidget {
  const MatchHeader({super.key});

  @override
  State<MatchHeader> createState() => _MatchHeaderState();
}

class _MatchHeaderState extends State<MatchHeader> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xFF2E3034)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Subheader Info
          AppText.s14w400BdM(
            "4x12. Including Overtime. USA",
            color: Colors.white.withOpacity(0.6),
          ),

          SizedBox(height: 10.h),

          // Carousel
          SizedBox(
            height: 200.h,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildScorePage(),
                _buildStatsPage("Possession", "52% - 48%"),
                _buildStatsPage("Shots", "15 - 12"),
              ],
            ),
          ),

          // Pagination Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                width: index == _currentPage ? 12.w : 6.w,
                height: 2.h,
                decoration: BoxDecoration(
                  color: index == _currentPage
                      ? Colors.white
                      : Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(2.r),
                ),
              );
            }),
          ),

          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _buildScorePage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTeam(
            "Atlanta Hawks",
            "https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Atlanta_Hawks_logo.svg/200px-Atlanta_Hawks_logo.svg.png",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "61 : 49",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "time elapsed:",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 12.sp,
                ),
              ),
              Text(
                "22 : 00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          _buildTeam(
            "Chicago Bulls",
            "https://upload.wikimedia.org/wikipedia/en/thumb/6/67/Chicago_Bulls_logo.svg/200px-Chicago_Bulls_logo.svg.png",
          ),
        ],
      ),
    );
  }

  Widget _buildStatsPage(String title, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          "4x12 Including Overtime, 2nd quarter, (36-30, 25-19)",
          style: TextStyle(color: Colors.white60, fontSize: 12.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildTeam(String name, String logoUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 70.w,
              height: 70.w,
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, size: 50.w, color: Colors.white70),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF408CDC),
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF2E3034), width: 2),
                ),
                child: Icon(Icons.star, color: Colors.white, size: 10.sp),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        SizedBox(
          width: 90.w,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
