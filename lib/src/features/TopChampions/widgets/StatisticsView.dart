import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class StandingsCard extends StatelessWidget {
  const StandingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: ColorName.bg,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.table_chart_outlined,
              color: const Color(0xFF408CDC),
              size: 24.sp,
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.s16w500TtM("Standings", color: ColorName.text),
              SizedBox(height: 4.h),
              AppText.s12w400BdS(
                "Find out the teams' rankings",
                color: ColorName.iconColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopPlayerRow extends StatelessWidget {
  final int rank;
  final String name;
  final String country;
  final String gm;
  final String gl;
  final ImageProvider? image;

  const TopPlayerRow({
    super.key,
    required this.rank,
    required this.name,
    required this.country,
    required this.gm,
    required this.gl,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          // Rank
          SizedBox(
            width: 20.w,
            child: Text(
              "$rank",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF526D82), // Blue-ish grey
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 16.w),

          // Avatar
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: ColorName.bg,
              shape: BoxShape.circle,
              image: image != null
                  ? DecorationImage(image: image!, fit: BoxFit.cover)
                  : null,
            ),
            child: image == null
                ? Icon(Icons.person, color: ColorName.iconColor, size: 24.sp)
                : null,
          ),
          SizedBox(width: 12.w),

          // Name & Country
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorName.text,
                  ),
                ),
                Text(
                  country,
                  style: TextStyle(fontSize: 12.sp, color: ColorName.iconColor),
                ),
              ],
            ),
          ),

          // Stats
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F4F9),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildStatColumn("GM", gm),
                SizedBox(width: 12.w),
                _buildStatColumn("GL", gl),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 9.sp,
            fontWeight: FontWeight.w500,
            color: ColorName.text.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color: ColorName.text,
          ),
        ),
      ],
    );
  }
}
