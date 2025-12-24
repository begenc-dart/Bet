import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchSettingsBottomSheet extends StatelessWidget {
  const MatchSettingsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle
          Container(
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          16.boxH,
          // Title
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF0D2338), // Dark blue/black title
            ),
          ),
          20.boxH,
          // Menu Items
          _buildMenuItem(
            icon: Icons.bar_chart_rounded,
            title: "Statistics",
            onTap: () => Navigator.pop(context),
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.settings_outlined,
            title: "Market settings",
            onTap: () => Navigator.pop(context),
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.unfold_more_rounded,
            title: "Expand all markets",
            onTap: () => Navigator.pop(context),
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.star_border_rounded,
            title: "Add to Favorites",
            onTap: () => Navigator.pop(context),
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.notifications_none_rounded,
            title: "Notifications",
            onTap: () => Navigator.pop(context),
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.auto_graph_rounded,
            title: "Odds movement",
            onTap: () => Navigator.pop(context),
          ),
          SizedBox(height: 30.h), // Bottom padding
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24.sp,
              color: const Color(0xFF5A738F), // Muted blue icon color
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0D2338),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      thickness: 1,
      indent: 24.w,
      endIndent: 24.w,
      color: Colors.grey.withOpacity(0.1),
    );
  }
}
