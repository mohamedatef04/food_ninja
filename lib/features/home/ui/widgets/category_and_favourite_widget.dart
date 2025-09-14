import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class CategoryAndFavouriteWidget extends StatelessWidget {
  const CategoryAndFavouriteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90.w,
          height: 30.h,
          decoration: BoxDecoration(
            color: const Color.fromARGB(
              255,
              216,
              231,
              225,
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: Text(
              'Fast food',
              style: AppStyles.grey14.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
