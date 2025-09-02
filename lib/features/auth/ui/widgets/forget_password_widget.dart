import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/features/auth/ui/views/forget_password_view.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(ForgetPasswordView.routeName);
      },
      child: Text(
        'Forget Password?',
        style: AppStyles.black12.copyWith(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
