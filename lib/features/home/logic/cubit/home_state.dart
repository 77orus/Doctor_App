


import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(HomeResponseModel homeResponseModel) = Success;
  const factory HomeState.failure(String message) = Failure;
}
