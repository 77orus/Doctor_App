import 'package:dio/dio.dart';
import 'package:doctoapp/core/helpers/api_services.dart';
import 'package:doctoapp/core/helpers/dio_factory.dart';
import 'package:doctoapp/features/home/data/repository/home_repo.dart';
import 'package:doctoapp/features/login/data/repositorys/login_repo.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoapp/features/register/data/repository/register_repo.dart';
import 'package:doctoapp/features/register/logic/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // register dio instance
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiServices: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // register cubit
  getIt.registerLazySingleton<RegisterRepo>(
      () => RegisterRepo(apiServices: getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(apiServices: getIt()));
}
