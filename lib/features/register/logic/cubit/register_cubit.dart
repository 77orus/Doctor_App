import 'package:bloc/bloc.dart';
import 'package:doctoapp/features/register/data/models/register_request_model.dart';
import 'package:doctoapp/features/register/data/repository/register_repo.dart';
import 'package:doctoapp/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  GlobalKey<FormState> registerFormKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> register() async {
    emit(const RegisterState.loading());

    var response = await registerRepo.register(RegisterRequestModel(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
    ));
    response.when(
      success: (registerResponse) {
        emit(RegisterState.success(registerResponse));
      },
      failure: (error) {
        emit(
          RegisterState.failure(
              error: error.apiErrorModel.message ?? 'error occured try again'),
        );
      },
    );
  }
}
