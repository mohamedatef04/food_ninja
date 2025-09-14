import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.black22,
    );
  }
}
