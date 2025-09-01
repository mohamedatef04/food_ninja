import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class CustomDontHaveAnAccountWidget extends StatelessWidget {
  const CustomDontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppStyles.black20.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            ' Sign Up',
            style: AppStyles.black20.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
