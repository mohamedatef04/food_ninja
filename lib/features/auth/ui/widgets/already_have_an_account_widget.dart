import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppStyles.black20.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            '',
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
