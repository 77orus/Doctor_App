import 'package:bloc/bloc.dart';
import 'package:doctoapp/features/login/data/models/login_request_model.dart';
import 'package:doctoapp/features/login/data/repositorys/login_repo.dart';
import 'package:doctoapp/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void emitLogin() async {
    emit(const LoginState.loading());
    var response = await loginRepo.login(
      LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.failure(
            error: error.apiErrorModel.message ?? "Something went wrong"));
      },
    );
  }
}
