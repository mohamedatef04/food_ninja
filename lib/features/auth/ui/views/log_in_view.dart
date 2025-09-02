import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/services/get_it_service.dart';
import 'package:food_delivery_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/log_in/log_in_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const routeName = '/log-in';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(getIt.get<AuthRepoImpl>()),
      child: const Scaffold(
        body: LogInViewBody(),
      ),
    );
  }
}
