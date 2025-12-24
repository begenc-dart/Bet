import 'package:bet/src/features/setting/presentation/SettingPage.dart';
import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedCategoryIndex = 0;

  final List<Map<String, dynamic>> _categories = [
    {"title": "Top", "icon": Assets.images.top},
    {"title": "Sports", "icon": Assets.images.sport},
    {"title": "Casino", "icon": Assets.images.casino},
    {"title": "1xGames", "icon": Assets.images.games},
    {"title": "Other", "icon": Assets.images.razno},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Menu",
          style: TextStyle(
            color: const Color(0xFF5A738F),
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: const Color(0xFF5A738F),
              size: 28.sp,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Category Selector
            Container(
              height: 100.h,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = _selectedCategoryIndex == index;
                  final cat = _categories[index];
                  return GestureDetector(
                    onTap: () => setState(() => _selectedCategoryIndex = index),
                    child: Container(
                      width: 80.w,
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            child: (cat['icon'] as dynamic).image(
                              package: "gen",
                              width: 32.sp,
                              height: 32.sp,
                              color: isSelected
                                  ? const Color(0xFF408CDC)
                                  : const Color(0xFF5A738F),
                            ),
                          ),
                          Text(
                            cat['title'],
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: isSelected
                                  ? const Color(0xFF408CDC)
                                  : const Color(0xFF5A738F),
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                          if (isSelected)
                            Container(
                              margin: EdgeInsets.only(top: 4.h),
                              height: 3.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFF408CDC),
                                borderRadius: BorderRadius.circular(2.r),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Content List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Column(
                children: [
                  _buildLeagueCard("1XCHAMPIONS", const Color(0xFF0066CC)),
                  12.boxH,
                  _buildLeagueCard("Europa League", const Color(0xFFE65100)),
                  12.boxH,
                  _buildLeagueCard("Premier League", const Color(0xFF6200EA)),
                  12.boxH,
                  _buildLeagueCard("LaLiga", const Color(0xFFD500F9)),
                  12.boxH,
                  _buildLeagueCard("AFCON", const Color(0xFFFF3D00)),
                  16.boxH,

                  // Icon Items
                  _buildMenuItem(
                    icon: Icons.timer_outlined,
                    title: "LIVE",
                    subtitle: "Bet on live events",
                    iconBackground: Colors.blue.shade50,
                    iconColor: Colors.blue,
                  ),
                  12.boxH,
                  _buildMenuItem(
                    icon: Icons.calendar_month_outlined,
                    title: "Pre-match",
                    subtitle: "Bet on upcoming events",
                    iconBackground: Colors.blue.shade50,
                    iconColor: Colors.blue,
                  ),
                  12.boxH,
                  _buildMenuItem(
                    icon: Icons.videogame_asset_outlined,
                    title: "Esports",
                    subtitle: "The best esports events",
                    iconBackground: Colors.blue.shade50,
                    iconColor: Colors.blue,
                  ),
                  12.boxH,
                  _buildMenuItem(
                    icon: Icons.casino_outlined,
                    title: "Slots",
                    subtitle: "The best slot games",
                    iconBackground: Colors.blue.shade50,
                    iconColor: Colors.blue,
                  ),
                  12.boxH,
                  _buildPromoCard(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAuthButton({
    required String text,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildLeagueCard(String title, Color accentColor) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: accentColor,
                  child: Icon(
                    Icons.sports_soccer,
                    color: Colors.white,
                    size: 24.sp,
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0D2338),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconBackground,
    required Color iconColor,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, color: iconColor, size: 24.sp),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0D2338),
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xFF5A738F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Promo codes",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "Promo points: 0",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
