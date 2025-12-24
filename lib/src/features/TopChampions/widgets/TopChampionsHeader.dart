import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class TopChampionsHeader extends StatelessWidget {
  final TabController tabController;

  const TopChampionsHeader({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 180.h,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ],
      backgroundColor: Color(0xFF0088CC), // Fallback blue
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Gradient Overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            // Big Title
            Positioned(
              bottom: 60.h,
              left: 20.w,
              child: Text(
                "1XCHAMPIONS",
                style: TextStyle(
                  fontFamily: 'Montserrat', // Assuming font
                  fontWeight: FontWeight.w900,
                  fontSize: 28.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: Container(
          decoration: BoxDecoration(
            color: ColorName.bg,
            borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
          ),
          padding: EdgeInsets.only(
            top: 16.h,
            left: 16.w,
            right: 16.w,
            bottom: 8.h,
          ),
          child: Container(
            height: 34.h,
            decoration: BoxDecoration(
              color: const Color(0xFFE0EAF6),
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.all(2.h),
            child: TabBar(
              controller: tabController,
              labelColor: Colors.white,
              unselectedLabelColor: const Color(0xFF526D82),
              indicator: BoxDecoration(
                color: const Color(0xFF408CDC),
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                // fontFamily: 'Montserrat', // Using default font to match others or if user provided font availability
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Tab(text: "Schedule"),
                Tab(text: "My games"),
                Tab(text: "Statistics"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
