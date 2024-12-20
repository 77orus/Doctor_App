import 'package:json_annotation/json_annotation.dart';

part 'register_response_model.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  final String? message;
  @JsonKey(name: 'user')
  final UserData userData;

  RegisterResponseModel({required this.message, required this.userData});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
@JsonSerializable()
class UserData {
  final String? name;
  final String? email;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  final int? id;

  UserData(
      {required this.name,
      required this.email,
      required this.updatedAt,
      required this.createdAt,
      required this.id});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
