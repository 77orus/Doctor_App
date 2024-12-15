import 'package:dio/dio.dart';
import 'package:doctoapp/core/helpers/api_services.dart';
import 'package:doctoapp/core/helpers/dio_factory.dart';
import 'package:doctoapp/features/login/data/repositorys/login_repo.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // register dio instance
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiServices: getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
