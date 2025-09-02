import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class GoogleSignWidget extends StatelessWidget {
  const GoogleSignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 152.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesGoogleIcon,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(width: 10.w),
            Text(
              'Google',
              style: AppStyles.grey14.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
