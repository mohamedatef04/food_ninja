import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Forget Password?',
        style: AppStyles.white16.copyWith(
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
