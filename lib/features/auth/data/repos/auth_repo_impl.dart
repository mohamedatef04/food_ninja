import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/errors/failures.dart';
import 'package:food_delivery_app/features/auth/logic/repos/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl implements AuthRepo {
  final SupabaseClient supabase = Supabase.instance.client;
  @override
  Future<Either<Failures, Unit>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signUp(
        email: email,
        password: password,
      );

      return const Right(unit);
    } on AuthException catch (e) {
      return Left(
        ServerFailure(errorMessage: e.message),
      );
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: e.toString()),
      );
    }
  }
}
