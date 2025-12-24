import 'package:bet/src/features/MatchDetail/widgets/OddsButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketCard extends StatefulWidget {
  final String title;
  final List<Map<String, String>> odds;
  final bool isExpanded;
  final VoidCallback? onExpand;

  const MarketCard({
    super.key,
    required this.title,
    required this.odds,
    this.isExpanded = true,
    this.onExpand,
  });

  @override
  State<MarketCard> createState() => _MarketCardState();
}

class _MarketCardState extends State<MarketCard> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
              if (widget.onExpand != null) {
                widget.onExpand!();
              }
            },
            child: Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0D2338),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.push_pin_outlined,
                  size: 20.sp,
                  color: Colors.grey.shade400,
                ),
                SizedBox(width: 12.w),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: const Color(0xFF408CDC),
                  size: 24.sp,
                ),
              ],
            ),
          ),
          if (_isExpanded) ...[SizedBox(height: 12.h), _buildOddsGrid()],
        ],
      ),
    );
  }

  Widget _buildOddsGrid() {
    // If we have many odds, we might want a grid or multiple rows
    // For simplicity, let's group them by pairs if it's more than 3
    if (widget.odds.length > 3) {
      List<Widget> rows = [];
      for (int i = 0; i < widget.odds.length; i += 2) {
        int end = (i + 2 < widget.odds.length) ? i + 2 : widget.odds.length;
        rows.add(
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              children: widget.odds
                  .sublist(i, end)
                  .map(
                    (odd) => OddsButton(
                      label: odd['label'] ?? '',
                      value: odd['value'] ?? '',
                      trend: odd['trend'],
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      }
      return Column(children: rows);
    }

    return Row(
      children: widget.odds
          .map(
            (odd) => OddsButton(
              label: odd['label'] ?? '',
              value: odd['value'] ?? '',
              trend: odd['trend'],
            ),
          )
          .toList(),
    );
  }
}
