import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

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

                Text('Forget Password!', style: AppStyles.black20),

                CustomTextFormField(
                  prefixIcon: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      Assets.imagesMessage,
                      width: 24.w,
                    ),
                  ),

                  hintText: 'Enter your email address',
                ),
                const CustomButton(buttonText: 'submit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
