import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/features/auth/logic/repos/auth_repo.dart';

part 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit(this.authRepo) : super(ResetPassInitial());

  final AuthRepo authRepo;

  Future<void> resetPassword({required String email}) async {
    emit(ResetPassLoading());
    final result = await authRepo.resetPassword(email: email);
    result.fold(
      (l) => emit(ResetPassError(errorMessage: l.errorMessage)),
      (r) => emit(ResetPassSuccess()),
    );
  }
}
