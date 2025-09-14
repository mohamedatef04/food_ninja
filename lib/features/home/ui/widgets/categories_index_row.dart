import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/home/ui/widgets/category_index_widget.dart';

class CategoriesIndexRow extends StatelessWidget {
  const CategoriesIndexRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: const [
        Expanded(
          child: CategoryIndexWidget(
            image: Assets.imagesAll,
            text: 'All',
          ),
        ),
        Expanded(
          child: CategoryIndexWidget(
            image: Assets.imagesFastFood,
            text: 'Fast Food',
          ),
        ),
        Expanded(
          child: CategoryIndexWidget(
            image: Assets.imagesDrinks,
            text: 'Drinks',
          ),
        ),
        Expanded(
          child: CategoryIndexWidget(
            image: Assets.imagesDrinks,
            text: 'Desserts',
          ),
        ),
      ],
    );
  }
}
