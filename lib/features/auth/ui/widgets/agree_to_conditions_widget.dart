import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class AgreeToConditionsWidget extends StatefulWidget {
  const AgreeToConditionsWidget({super.key});

  @override
  State<AgreeToConditionsWidget> createState() =>
      _AgreeToConditionsWidgetState();
}

class _AgreeToConditionsWidgetState extends State<AgreeToConditionsWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,

          child: Checkbox(
            activeColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            value: isChecked,
            onChanged: (_) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
        ),
        Text('I agree to the terms and conditions', style: AppStyles.grey14),
      ],
    );
  }
}
