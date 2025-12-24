import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedCategoryIndex = 0;

  final List<String> _categories = [
    "Sports",
    "1xGames",
    "Casino. Games",
    "Casino",
    "Cybersport",
  ];

  final List<Map<String, dynamic>> _frequentlySearched = [
    {"name": "Barcelona", "icon": Icons.sports_soccer},
    {"name": "Lobos UPNFM II", "icon": Icons.sports_soccer},
    {"name": "Newcastle United (CATALYST)", "icon": Icons.sports_soccer},
    {"name": "Player 1", "icon": Icons.person},
    {"name": "MysT", "icon": Icons.person},
    {"name": "Tide Gaming", "icon": Icons.videogame_asset},
    {"name": "Detroit Pistons", "icon": Icons.sports_basketball},
    {"name": "Milwaukee Bucks", "icon": Icons.sports_basketball},
    {"name": "Al-Shamal Doha", "icon": Icons.sports_soccer},
    {"name": "Al Ahli Qatar", "icon": Icons.sports_soccer},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.bg,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorName.text),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Container(
          height: 40.h,
          margin: EdgeInsets.only(right: 16.w),
          decoration: BoxDecoration(
            color: const Color(0xFFE0EAF6),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: ColorName.text.withOpacity(0.5),
                fontSize: 16.sp,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: ColorName.text.withOpacity(0.5),
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 8.h),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Tabs
          Container(
            color: ColorName.white,
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: List.generate(_categories.length, (index) {
                  bool isSelected = _selectedCategoryIndex == index;
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: GestureDetector(
                      onTap: () =>
                          setState(() => _selectedCategoryIndex = index),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF408CDC)
                              : const Color(0xFFF1F4F9),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          _categories[index],
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
              ),
            ),
          ),

          // Frequently Searched Section
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.whatshot,
                        color: const Color(0xFF408CDC),
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      AppText.s16w500TtM(
                        "Frequently searched",
                        color: ColorName.text,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Wrap(
                    spacing: 8.w,
                    runSpacing: 10.h,
                    children: _frequentlySearched.map((item) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              item['icon'] as IconData,
                              size: 18.sp,
                              color: ColorName.text.withOpacity(0.6),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              item['name'] as String,
                              style: TextStyle(
                                color: ColorName.text,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
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
