import 'package:doctoapp/core/helpers/api_error_handler.dart';
import 'package:doctoapp/core/helpers/api_result.dart';
import 'package:doctoapp/core/helpers/api_services.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';

class HomeRepo {
  final ApiServices apiServices;

  HomeRepo({required this.apiServices});

  Future<ApiResult<HomeResponseModel>> getHomeData() async {
    try {
      final response = await apiServices.getCategoriesWithDoctors();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
