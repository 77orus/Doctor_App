import 'package:doctoapp/core/helpers/api_error_handler.dart';
import 'package:doctoapp/core/helpers/api_result.dart';
import 'package:doctoapp/core/helpers/api_services.dart';
import 'package:doctoapp/features/login/data/models/login_request_model.dart';
import 'package:doctoapp/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiServices apiServices;

  LoginRepo({required this.apiServices});

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      var response = await apiServices.login(loginRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
