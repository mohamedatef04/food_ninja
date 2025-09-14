import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/home/ui/views/item_details_view.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(ItemDetailsView.routeName);
      },
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 35.h),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.45,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: const Color.fromARGB(255, 162, 228, 200),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    spacing: 10.h,
                    children: [
                      Row(
                        children: [
                          Image.asset(Assets.imagesBlackHeart, height: 20.h),
                          const Spacer(),
                          Text('⭐ 4.7 ', style: AppStyles.black13),
                        ],
                      ),
                      Image.asset(
                        Assets.imagesPizza,

                        width: 90.w,
                      ),
                      Text(
                        'Pizza',
                        style: AppStyles.black20.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '10\$',
                        style: AppStyles.white16.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width * 0.17,
            bottom: 0,
            child: Container(
              width: 50.w,
              height: 50.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,

                color: AppColors.primaryColor,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
