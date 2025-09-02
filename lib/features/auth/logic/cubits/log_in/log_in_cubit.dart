import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/features/auth/logic/repos/auth_repo.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.authRepo) : super(LogInInitial());

  final AuthRepo authRepo;

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    emit(LogInLoadingState());
    final result = await authRepo.logIn(email: email, password: password);
    result.fold(
      (l) => emit(LogInErrorState(errorMessage: l.errorMessage)),
      (r) => emit(LogInSuccessState()),
    );
  }
}
