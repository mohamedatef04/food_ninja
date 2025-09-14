import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hi Jonny!',
        style: AppStyles.black20,
      ),
      subtitle: Text(
        'What do you want to order today?',
        style: AppStyles.black13,
      ),
      trailing: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(image: AssetImage(Assets.imagesProfile)),
        ),
      ),
    );
  }
}
