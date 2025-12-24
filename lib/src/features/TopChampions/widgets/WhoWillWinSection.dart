import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class WhoWillWinSection extends StatelessWidget {
  const WhoWillWinSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: AppText.s16w500TtM("Who Will Win"),
        ),

        SizedBox(height: 12.h),

        // List of participants
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              _buildParticipantRow(
                "Arsenal - Yes",
                "1.04",
                Assets.images.fottball.provider(),
              ),
              _buildParticipantRow(
                "Bayern Munich - Yes",
                "12",
                Assets.images.fottball.provider(),
              ),
              _buildParticipantRow(
                "Liverpool - Yes",
                "100",
                Assets.images.fottball.provider(),
              ),
              _buildParticipantRow(
                "Manchester City - Yes",
                "100",
                Assets.images.fottball.provider(),
              ),
            ],
          ),
        ),

        SizedBox(height: 16.h),

        // All participants button
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF408CDC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                elevation: 0,
              ),
              child: Text(
                "All participants",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOddButton(String label, String value) {
    return Expanded(
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: ColorName.bg,
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: ColorName.text.withOpacity(0.6),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: ColorName.text,
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildParticipantRow(String name, String odds, ImageProvider logo) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          // Logo
          Container(
            width: 24.w,
            height: 24.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: logo, fit: BoxFit.contain),
            ),
          ),
          SizedBox(width: 12.w),

          // Name and Odds Container
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: ColorName.bg,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: ColorName.text,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    odds,
                    style: TextStyle(
                      color: ColorName.text,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
