import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  // categories States
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(List<CategoriesData> categoriesData) =
      Success;
  const factory HomeState.failure(String message) = Failure;

  // doctors states
  const factory HomeState.doctorSuccess(List<Doctors> doctorsData) = DoctorSuccess;
  const factory HomeState.doctorFailure(String message) = DoctorFailure;
}
