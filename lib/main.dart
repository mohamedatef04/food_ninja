import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/functions/initalize_supabase.dart';
import 'package:food_delivery_app/core/routes/app_routes.dart';
import 'package:food_delivery_app/core/services/get_it_service.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';

void main() async {
  await initSupabase();
  initGetIt();
  runApp(const FoodNinja());
}

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.ligthWhiteColor),
      ),
    );
  }
}
