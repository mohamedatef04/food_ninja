import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onTap,
    this.isLoading = false,
  });
  final String buttonText;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 157.w,
        height: 57.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.primaryColorLight,
            ],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  buttonText,
                  style: AppStyles.white16,
                ),
        ),
      ),
    );
  }
}
