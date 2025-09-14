import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class RatesList extends StatelessWidget {
  const RatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            width: 50.w,
            height: 50.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(Assets.imagesProfile),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Name',
                style: AppStyles.black20.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('2 days ago', style: AppStyles.grey14),
            ],
          ),
          subtitle: Text(
            'Great food! Great food!Great food!Great food!Great food!Great food!Great food!Great food!',
            style: AppStyles.grey14,
          ),
          trailing: Container(
            width: 50.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 231, 217),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5.w,
              children: [
                Image.asset(Assets.imagesIconStar, height: 16.h),

                Text(
                  '4',
                  style: AppStyles.black20.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
