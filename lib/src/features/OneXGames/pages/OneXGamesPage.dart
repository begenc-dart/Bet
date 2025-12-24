import 'package:bet/src/features/Search/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class OneXGamesPage extends StatefulWidget {
  const OneXGamesPage({super.key});

  @override
  State<OneXGamesPage> createState() => _OneXGamesPageState();
}

class _OneXGamesPageState extends State<OneXGamesPage> {
  int _selectedFilterIndex = 1; // "All" is selected by default
  int _currentTabIndex = 0; // 0: All Games, 1: Bonuses, 2: Favorites

  final List<String> _filters = ["All", "For you", "Best", "New", "Latest"];

  final List<Map<String, dynamic>> _games = [
    {
      "title": "Air Crash",
      "winInfo": "",
      "badges": ["NEW"],
      "color": const Color(0xFF0D47A1), // blue[900]
    },
    {
      "title": "Crash",
      "winInfo": "",
      "badges": [],
      "color": const Color(0xFFE65100), // orange[800]
    },
    {
      "title": "Crystal",
      "winInfo": "",
      "badges": [],
      "color": const Color(0xFF448AFF), // blueAccent
    },
    {
      "title": "Western slot",
      "winInfo": "win up to X2000",
      "badges": ["DEMO"],
      "color": const Color(0xFF5D4037), // brown
    },
    {
      "title": "Burning Hot",
      "winInfo": "win up to X3000",
      "badges": ["DEMO"],
      "color": const Color(0xFF1565C0), // blue[800]
    },
    {
      "title": "Under and Over 7",
      "winInfo": "win up to X5.8",
      "badges": ["DEMO", "BEST"],
      "color": const Color(0xFF1976D2), // blue[700]
    },
    {
      "title": "Game 7",
      "winInfo": "win up to X2",
      "badges": ["BEST"],
      "color": const Color(0xFF1E88E5), // blue[600]
    },
    {
      "title": "Game 8",
      "winInfo": "win up to X2",
      "badges": ["DEMO", "BEST"],
      "color": const Color(0xFF2196F3), // blue[500]
    },
  ];

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
          "All Games",
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
          SizedBox(width: 8.w),
        ],
      ),
      body: IndexedStack(
        index: _currentTabIndex,
        children: [
          _buildAllGamesView(),
          const Center(child: Text("Bonuses View")),
          const Center(child: Text("Favorites View")),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildAllGamesView() {
    return Column(
      children: [
        // Filter Bar
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F4F9),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(Icons.tune, size: 20.sp, color: ColorName.text),
                ),
                SizedBox(width: 8.w),
                ...List.generate(_filters.length, (index) {
                  bool isSelected = _selectedFilterIndex == index;
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedFilterIndex = index),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF408CDC)
                              : const Color(0xFFF1F4F9),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          _filters[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : ColorName.text,
                            fontSize: 14.sp,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),

        // Grid
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(12.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.w,
            ),
            itemCount: _games.length,
            itemBuilder: (context, index) {
              final game = _games[index];
              return _buildGameCard(game);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildGameCard(Map<String, dynamic> game) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: game['color'] as Color,
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "GAMES",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                ),
                // Badges
                Positioned(
                  top: 8,
                  left: 8,
                  child: Row(
                    children: (game['badges'] as List).map((badge) {
                      final String badgeStr = badge.toString();
                      Color badgeColor = Colors.green;
                      if (badgeStr == "DEMO")
                        badgeColor = const Color(0xFF408CDC);
                      if (badgeStr == "BEST") badgeColor = Colors.orange;

                      return Container(
                        margin: EdgeInsets.only(right: 4.w),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: badgeColor,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          badgeStr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // Win Info
                if (game['winInfo'].toString().isNotEmpty)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: 8.w,
                      ),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        game['winInfo'].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Text(
              game['title'].toString(),
              style: TextStyle(
                color: ColorName.text,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.1))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomNavItem(Icons.grid_view, "All Games", 0),
          _buildBottomNavItem(Icons.settings, "Bonuses", 1),
          _buildBottomNavItem(Icons.star, "Favorites", 2),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, int index) {
    bool isSelected = _currentTabIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentTabIndex = index),
      child: Container(
        color: Colors.transparent, // Background for better tap target
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFF408CDC) : Colors.grey,
              size: 24.sp,
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? const Color(0xFF408CDC) : Colors.grey,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
