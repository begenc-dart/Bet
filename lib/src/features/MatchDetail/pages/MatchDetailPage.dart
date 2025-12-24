import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/MatchDetail/widgets/MarketCard.dart';
import 'package:bet/src/features/MatchDetail/widgets/MatchHeader.dart';
import 'package:bet/src/features/MatchDetail/widgets/MatchSettingsBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MatchDetailPage extends StatefulWidget {
  const MatchDetailPage({super.key});

  @override
  State<MatchDetailPage> createState() => _MatchDetailPageState();
}

class _MatchDetailPageState extends State<MatchDetailPage> {
  late ScrollController _scrollController;
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        // Threshold for switching between expanded and collapsed title
        if (_scrollController.offset > 120.h && !_isCollapsed) {
          setState(() => _isCollapsed = true);
        } else if (_scrollController.offset <= 120.h && _isCollapsed) {
          setState(() => _isCollapsed = false);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isCollapsed
            ? const Color(0xFF1E1E1E)
            : const Color(0xFF2E3034),
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: _isCollapsed ? null : const Color(0xFF2E3034),
        leading: BackButton(color: Colors.white),
        title: _buildExpandedTitle(),
        actions: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bolt, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const MatchSettingsBottomSheet(),
                    );
                  },
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 360.h, // Big size for expanded header
              toolbarHeight: 100.h, // Baseline for collapsed header
              backgroundColor: const Color(0xFF1E1E1E),
              elevation: 0,
              leading: SizedBox(),
              centerTitle: true,
              leadingWidth: 0,
              title: _isCollapsed ? _buildCollapsedTitle() : SizedBox(),
              flexibleSpace: const FlexibleSpaceBar(
                background: MatchHeader(),
                collapseMode: CollapseMode.pin,
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100.h),
                child: _buildStickyBottomPart(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          children: [
            MarketCard(
              title: "Team Wins",
              odds: const [
                {'label': 'W1', 'value': '1.195', 'trend': 'up'},
                {'label': 'W2', 'value': '4.62', 'trend': 'down'},
              ],
            ),
            MarketCard(
              title: "1X2 In Regular Time",
              odds: const [
                {'label': 'W1', 'value': '1.19', 'trend': 'down'},
                {'label': 'X', 'value': '17'},
                {'label': 'W2', 'value': '5.25', 'trend': 'up'},
              ],
            ),
            MarketCard(
              title: "Total",
              odds: const [
                {'label': 'Over (245.5)', 'value': '1.39', 'trend': 'up'},
                {'label': 'Under (245.5)', 'value': '2.68', 'trend': 'down'},
                {'label': 'Over (246.5)', 'value': '1.45'},
                {'label': 'Under (246.5)', 'value': '2.475', 'trend': 'down'},
                {'label': 'Over (247.5)', 'value': '1.632', 'trend': 'up'},
                {'label': 'Under (247.5)', 'value': '2.19'},
                {'label': 'Over (248.5)', 'value': '1.704', 'trend': 'down'},
                {'label': 'Under (248.5)', 'value': '2.075', 'trend': 'up'},
              ],
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorName.dustyBlue,
        child: const Icon(
          Icons.confirmation_number_outlined,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildExpandedTitle() {
    return AppText.s14w500LbL("Basketball. NBA", color: ColorName.white);
  }

  Widget _buildCollapsedTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSmallAvatar(),
        Column(
          children: [
            Text(
              "61 : 49",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "time elapsed: 22:00",
              style: TextStyle(color: Colors.white54, fontSize: 10.sp),
            ),
          ],
        ),
        _buildSmallAvatar(),
      ],
    );
  }

  Widget _buildSmallAvatar() {
    return Container(
      width: 56.w,
      height: 56.w,
      decoration: BoxDecoration(color: Colors.white10, shape: BoxShape.circle),
      child: Center(
        child: Icon(Icons.person, size: 24.w, color: Colors.white70),
      ),
    );
  }

  Widget _buildStickyBottomPart() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        children: [
          Text(
            "2nd quarter, (36-30, 25-19)",
            style: TextStyle(color: Colors.white70, fontSize: 12.sp),
          ),
          SizedBox(height: 12.h),
          _buildFilterPills(),
          SizedBox(height: 12.h),
          _buildTabs(),
        ],
      ),
    );
  }

  Widget _buildFilterPills() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          _buildPill("All markets", true),
          _buildPill("Popular", false, icon: Icons.star_border),
          _buildPill("Total", false),
          _buildPill("Handicap", false),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          const Icon(Icons.list, color: Colors.white70, size: 18),
          SizedBox(width: 16.w),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTab("Including Overtime", true),
                  _buildTab("2nd quarter", false),
                  _buildTab("3rd quarter", false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPill(String text, bool isSelected, {IconData? icon}) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 12.sp,
              color: isSelected ? Colors.black : Colors.white,
            ),
          if (icon != null) SizedBox(width: 4.w),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool isSelected) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white60,
              fontSize: 12.sp,
            ),
          ),
          if (isSelected)
            Container(
              margin: EdgeInsets.only(top: 2.h),
              height: 2.h,
              width: 30.w,
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}
