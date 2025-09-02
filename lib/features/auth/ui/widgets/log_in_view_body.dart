import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_dont_have_an_account_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/forget_password_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/google_sign_widget.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/custom_button.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              spacing: 10.h,
              children: [
                Image.asset(Assets.imagesLogo2, height: 139.h, width: 175.w),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Food',
                        style: AppStyles.black22.copyWith(
                          fontSize: 40.sp,
                          color: AppColors.primaryColorLight,
                        ),
                      ),
                      TextSpan(
                        text: 'Ninja',
                        style: AppStyles.black22.copyWith(
                          fontSize: 40.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),

                Text('Login To Your Account', style: AppStyles.black20),

                const CustomTextFormField(hintText: 'Email'),
                const CustomTextFormField(hintText: 'Password'),

                Text(
                  'or Continue With',
                  style: AppStyles.black12.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const GoogleSignWidget(),
                ForgetPasswordWidget(),
                CustomButton(buttonText: 'Login', onTap: () {}),

                CustomDontHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
