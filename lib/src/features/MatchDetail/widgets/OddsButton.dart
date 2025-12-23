import 'package:bet/src/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:bet/src/features/MatchDetail/widgets/BetSlipBottomSheet.dart';

class OddsButton extends StatelessWidget {
  final String label;
  final String value;
  final bool isSelected;
  final VoidCallback? onTap;

  const OddsButton({
    super.key,
    required this.label,
    required this.value,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: const Color(0xFF3C5A76),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
            ),
            builder: (context) {
              return BetSlipBottomSheet(
                label: label,
                value: value,
                onLogin: () {
                  // Navigate to Login
                },
                onRegister: () {
                  // Navigate to Register
                },
              );
            },
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color: isSelected ? ColorName.freshGreen : ColorName.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: isSelected
                  ? Colors.transparent
                  : ColorName.count.withOpacity(0.5),
            ),
            boxShadow: [
              if (!isSelected)
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.s12w400BdS(
                label,
                color: isSelected
                    ? ColorName.white
                    : ColorName.text.withOpacity(0.6),
              ),
              SizedBox(height: 4.h),
              AppText.s14w400BdM(
                value,
                fontWeight: FontWeight.w600,
                color: isSelected ? ColorName.white : ColorName.text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
