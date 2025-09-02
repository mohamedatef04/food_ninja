part of 'reset_pass_cubit.dart';

@immutable
abstract class ResetPassState {}

class ResetPassInitial extends ResetPassState {}

class ResetPassLoading extends ResetPassState {}

class ResetPassSuccess extends ResetPassState {}

class ResetPassError extends ResetPassState {
  final String errorMessage;
  ResetPassError({required this.errorMessage});
}
