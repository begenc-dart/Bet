import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/MatchDetail/widgets/OddsButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class MarketCard extends StatefulWidget {
  final String title;
  final List<Map<String, String>> odds; // [{'label': 'W1', 'value': '5'}, ...]
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
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: ColorName.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // fixed AppText usage
                AppText.s14w400BdM(
                  widget.title,
                  fontWeight: FontWeight.w600,
                  color: ColorName.text,
                ),
                Spacer(),
                Icon(
                  Icons.push_pin_outlined, // Pin icon
                  size: 18.sp,
                  color: ColorName.iconColor,
                ),
                SizedBox(width: 8.w),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: ColorName.dustyBlue,
                ),
              ],
            ),
          ),
          if (_isExpanded) ...[
            SizedBox(height: 12.h),
            Row(
              children: widget.odds
                  .map(
                    (odd) => OddsButton(
                      label: odd['label'] ?? '',
                      value: odd['value'] ?? '',
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}
