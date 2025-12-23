import 'package:bet/src/features/MatchDetail/widgets/MarketCard.dart';
import 'package:bet/src/features/MatchDetail/widgets/MatchHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MatchDetailPage extends StatelessWidget {
  const MatchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.bg, // Light background
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bolt, color: Colors.white), // Flash icon
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white), // Menu icon
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with match score, teams, background
            const MatchHeader(),

            // Content Body with Markets
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                children: [
                  // 1x2 Market
                  MarketCard(
                    title: "1X2",
                    odds: const [
                      {'label': 'W1', 'value': '5'},
                      {'label': 'X', 'value': '2.05'},
                      {'label': 'W2', 'value': '2.36'},
                    ],
                  ),

                  // Double Chance
                  MarketCard(
                    title: "Double Chance",
                    odds: const [
                      {'label': '1X', 'value': '1.52'},
                      {'label': '12', 'value': '1.69'},
                      {'label': '2X', 'value': '1.13'},
                    ],
                  ),

                  // Total
                  MarketCard(
                    title: "Total",
                    odds: const [
                      {'label': 'Over (0.5)', 'value': '1.46'},
                      {'label': 'Under (0.5)', 'value': '2.45'},
                    ],
                  ),
                  MarketCard(
                    title: "Total",
                    odds: const [
                      {'label': 'Over (1)', 'value': '2.07'},
                      {'label': 'Under (1)', 'value': '1.67'},
                    ],
                  ),

                  // Asian Handicap as example of closed/other markets
                  MarketCard(
                    title: "Handicap",
                    isExpanded: false,
                    odds: const [
                      {'label': '1 (0)', 'value': '3.2'},
                      {'label': '2 (0)', 'value': '1.2'},
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 80.h), // Spacing for bottom nav if needed
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
}
