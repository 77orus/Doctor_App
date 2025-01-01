import 'package:doctoapp/core/helpers/api_error_handler.dart';
import 'package:doctoapp/core/helpers/api_result.dart';
import 'package:doctoapp/core/helpers/api_services.dart';
import 'package:doctoapp/features/register/data/models/register_request_model.dart';
import 'package:doctoapp/features/register/data/models/register_response_model.dart';

class RegisterRepo {
  final ApiServices apiServices;

  RegisterRepo({required this.apiServices});

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel registerRequestModel) async {
    try {
      var response = await apiServices.register(registerRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
