import 'package:food_delivery_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initGetIt() {
  getIt.registerLazySingleton<AuthRepoImpl>(() => AuthRepoImpl());
}
