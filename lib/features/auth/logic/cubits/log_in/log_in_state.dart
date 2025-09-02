part of 'log_in_cubit.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {}

class LogInLoadingState extends LogInState {}

class LogInSuccessState extends LogInState {}

class LogInErrorState extends LogInState {
  final String errorMessage;
  LogInErrorState({required this.errorMessage});
}
