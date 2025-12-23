import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

class BetSlipBottomSheet extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onLogin;
  final VoidCallback onRegister;

  const BetSlipBottomSheet({
    super.key,
    required this.label,
    required this.value,
    required this.onLogin,
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Blue Header with Tabs
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            children: [
              Container(
                width: 40.w,
                height: 4.h,
                margin: EdgeInsets.only(bottom: 12.h),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildHeaderTab(Icons.notifications_outlined, "Track"),
                  _buildHeaderTab(Icons.add_circle_outline, "Add to bet slip"),
                ],
              ),
            ],
          ),
        ),

        // White Body with Bet Details
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
            color: ColorName.white,
          ),
          child: Column(
            children: [
              // Selected Match & Odd Info
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: ColorName.bg,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.s14w400BdM(
                          "1X2: $label",
                          fontWeight: FontWeight.w600,
                          color: ColorName.text,
                        ),
                        SizedBox(height: 4.h),
                        AppText.s12w400BdS(
                          "Arsenal - Crystal Palace",
                          color: ColorName.text.withOpacity(0.6),
                        ),
                      ],
                    ),
                    AppText.s20w500TtL(
                      value,
                      color: ColorName.text,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // Placeholder for "Details" (Stake Input & Place Bet)
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48.h,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorName.count),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorName.count),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorName.count),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          hintText: "Stake amount...",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    height: 48.h,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    decoration: BoxDecoration(
                      color: ColorName.freshGreen,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    alignment: Alignment.center,
                    child: AppText.s16w500TtM("Place Bet", color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderTab(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20.sp),
        SizedBox(width: 8.w),
        AppText.s10w400LbS(
          text,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
