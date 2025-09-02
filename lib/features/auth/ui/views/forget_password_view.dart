import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/services/get_it_service.dart';
import 'package:food_delivery_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const String routeName = '/forget-password';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPassCubit(getIt.get<AuthRepoImpl>()),
      child: const Scaffold(
        body: ForgetPasswordViewBody(),
      ),
    );
  }
}
