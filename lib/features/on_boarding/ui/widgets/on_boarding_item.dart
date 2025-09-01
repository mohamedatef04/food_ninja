import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/features/on_boarding/data/on_boarding_item_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.onBoardingItemModel});

  final OnBoardingItemModel onBoardingItemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            spacing: 10.h,
            children: [
              Container(
                width: 408.5.w,
                height: 434.22.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingItemModel.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                onBoardingItemModel.title,
                textAlign: TextAlign.center,
                style: AppStyles.black22,
              ),
              Text(
                onBoardingItemModel.subtitle,
                textAlign: TextAlign.center,
                style: AppStyles.black12,
              ),
              GestureDetector(
                onTap: onBoardingItemModel.onTap,
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
                    child: Text(
                      onBoardingItemModel.buttonText,
                      style: AppStyles.white16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
