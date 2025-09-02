import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failures, Unit>> signUp({
    required String email,
    required String password,
  });

  Future<Either<Failures, Unit>> logIn({
    required String email,
    required String password,
  });

  Future<Either<Failures, Unit>> resetPassword({required String email});
}
