import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/features/home/ui/widgets/menu_item.dart';

class MenuGridview extends StatelessWidget {
  const MenuGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        crossAxisCount: 2,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        return const MenuItem();
      },
    );
  }
}
