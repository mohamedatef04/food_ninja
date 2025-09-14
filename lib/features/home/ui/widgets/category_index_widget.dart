import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class CategoryIndexWidget extends StatelessWidget {
  const CategoryIndexWidget({
    super.key,
    required this.image,
    this.onTap,
    required this.text,
  });
  final String image;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: const Color.fromARGB(255, 204, 241, 219),
            ),
            child: Center(child: Image.asset(image, height: 55.h)),
          ),
        ),
        Text(text, style: AppStyles.black13),
      ],
    );
  }
}
