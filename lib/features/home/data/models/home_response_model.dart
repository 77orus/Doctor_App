import 'package:json_annotation/json_annotation.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  final String message;
  final List<CategoriesData> data;

  HomeResponseModel({required this.message, required this.data});

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

@JsonSerializable()
class CategoriesData {
  final int id;
  final String name;
  final String image;
  @JsonKey(name: 'doctors')
  final List<Doctors> doctorsData;

  CategoriesData(
      {required this.id,
      required this.name,
      required this.image,
      required this.doctorsData});

  factory CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  final int id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final int experience;
  final String description;

  Doctors(
      {required this.id,
      required this.name,
      required this.image,
      required this.email,
      required this.phone,
      required this.experience,
      required this.description});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
