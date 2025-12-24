import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bet/src/features/MatchDetail/widgets/BetSlipBottomSheet.dart';

class OddsButton extends StatelessWidget {
  final String label;
  final String value;
  final bool isSelected;
  final String? trend; // 'up', 'down', or null
  final VoidCallback? onTap;

  const OddsButton({
    super.key,
    required this.label,
    required this.value,
    this.isSelected = false,
    this.trend,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
            ),
            builder: (context) {
              return BetSlipBottomSheet(
                label: label,
                value: value,
                onLogin: () {},
                onRegister: () {},
              );
            },
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xFF408CDC)
                : const Color(0xFFF1F4F9),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: isSelected ? Colors.white : const Color(0xFF5A738F),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (trend == 'up')
                    Icon(Icons.arrow_drop_up, color: Colors.green, size: 16.sp),
                  if (trend == 'down')
                    Icon(Icons.arrow_drop_down, color: Colors.red, size: 16.sp),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: isSelected
                          ? Colors.white
                          : (trend == 'up'
                                ? Colors.green
                                : (trend == 'down'
                                      ? Colors.red
                                      : const Color(0xFF2E3034))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
