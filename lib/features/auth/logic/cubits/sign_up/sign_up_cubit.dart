import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/features/auth/logic/repos/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  final AuthRepo authRepo;

  Future<void> createAccount({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoadingState());
    final result = await authRepo.signUp(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (l) => emit(SignUpFailureState(errorMessage: l.errorMessage)),
      (r) => emit(SignUpSuccessState()),
    );
  }
}
