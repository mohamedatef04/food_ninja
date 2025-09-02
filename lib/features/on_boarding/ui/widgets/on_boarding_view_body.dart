import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/ui/views/log_in_view.dart';
import 'package:food_delivery_app/features/on_boarding/data/on_boarding_item_model.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/on_boarding_item.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  late List<OnBoardingItemModel> items;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    items = [
      OnBoardingItemModel(
        image: Assets.imagesOnboarding1Light,
        title: 'Find your Comfort\nFood here',
        subtitle:
            'Here You Can find a chef or dish for every\ntaste and color. Enjoy!',
        buttonText: 'Next',
        onTap: () => pageController.nextPage(
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        ),
      ),
      OnBoardingItemModel(
        image: Assets.imagesOnboarding2Light,
        title: 'Food Ninja is Where Your\nComfort Food Lives',
        subtitle: 'Enjoy a fast and smooth food delivery at\nyour doorstep',
        buttonText: 'Get Started',
        onTap: () {
          GoRouter.of(context).pushReplacement(LogInView.routeName);
        },
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) =>
                  OnBoardingItem(onBoardingItemModel: items[index]),
              itemCount: items.length,
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.9,
              left: MediaQuery.sizeOf(context).width * 0.4,
              child: SmoothPageIndicator(
                controller: pageController,
                count: items.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.primaryColor,
                  dotColor: AppColors.primaryColorLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
