import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/features/home/logic/cubits/nav_bar_cubit.dart';
import 'package:food_delivery_app/features/home/ui/widgets/main_home_view_body.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});
  static const String routeName = '/main-home-view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: const Scaffold(
        body: MainHomeViewBody(),
      ),
    );
  }
}
