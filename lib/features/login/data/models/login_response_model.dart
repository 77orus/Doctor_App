import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String message;
  final Data data;
  final bool status;
  final int code;

  LoginResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

}
@JsonSerializable()
class Data {
  final String token;
  @JsonKey(name: 'user')
  final String name;

  Data({required this.token, required this.name});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
