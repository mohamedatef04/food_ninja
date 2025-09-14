import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/widgets/custom_nav_bar.dart';
import 'package:food_delivery_app/features/cart/ui/views/cart_view.dart';
import 'package:food_delivery_app/features/favourites/ui/views/favourites_view.dart';
import 'package:food_delivery_app/features/home/logic/cubits/nav_bar_cubit.dart';
import 'package:food_delivery_app/features/home/ui/views/home_view.dart';
import 'package:food_delivery_app/features/profile/ui/views/profile_view.dart';

class MainHomeViewBody extends StatefulWidget {
  const MainHomeViewBody({super.key});

  @override
  State<MainHomeViewBody> createState() => _MainHomeViewBodyState();
}

class _MainHomeViewBodyState extends State<MainHomeViewBody> {
  final List<Widget> pages = [
    const HomeView(),
    const CartView(),
    const FavouritesView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarCubit, NavBarState>(
      listener: (context, state) {
        if (state is NavBarIndexChanged) {}
      },
      builder: (context, state) {
        return Scaffold(
          body: pages[context.read<NavBarCubit>().currentIndex],
          bottomNavigationBar: const CustomNavBar(),
        );
      },
    );
  }
}
