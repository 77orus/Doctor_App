import 'package:dio/dio.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:doctoapp/features/login/data/models/login_request_model.dart';
import 'package:doctoapp/features/login/data/models/login_response_model.dart';
import 'package:doctoapp/features/register/data/models/register_request_model.dart';
import 'package:doctoapp/features/register/data/models/register_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:8000/')
abstract class ApiServices {
  factory ApiServices(
    Dio dio, {
    String? baseUrl,
  }) = _ApiServices;

  @POST('api/login')
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);


  @POST('api/register')
  Future<RegisterResponseModel> register(@Body() RegisterRequestModel registerRequestModel);


  @GET("api/getCategoriesWithDoctors")
  Future<HomeResponseModel> getCategoriesWithDoctors();
}
