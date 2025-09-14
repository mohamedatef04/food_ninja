import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/home/ui/widgets/categories_index_row.dart';
import 'package:food_delivery_app/features/home/ui/widgets/custom_listtile.dart';
import 'package:food_delivery_app/features/home/ui/widgets/menu_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    spacing: 10.h,
                    children: [
                      const CustomListtile(),
                      Image.asset(Assets.imagesPromoAdvertising),
                      const CategoriesIndexRow(),
                      Row(
                        children: [
                          Text(
                            'What Today!',
                            style: AppStyles.black20,
                          ),
                          const Spacer(),
                          Image.asset(
                            Assets.imagesGroup,
                            height: 40.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                MenuGridview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
