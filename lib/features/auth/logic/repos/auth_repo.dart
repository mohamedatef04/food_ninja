import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/errors/failures.dart';
import 'package:food_delivery_app/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failures, Unit>> signUp({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, Unit>> logIn({
    required String email,
    required String password,
  });

  Future<Either<Failures, Unit>> resetPassword({required String email});

  Future<Either<Failures, Unit>> storeUserData({required UserModel userModel});
}
