import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/on_boarding/ui/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => GoRouter.of(context).pushReplacement(OnBoardingView.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          spacing: 5.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }
}
