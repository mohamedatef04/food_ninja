import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/services/get_it_service.dart';
import 'package:food_delivery_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/sign_up/sign_up_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt.get<AuthRepoImpl>()),
      child: const Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
