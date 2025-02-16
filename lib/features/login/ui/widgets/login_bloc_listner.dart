import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/core/themes/colors.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoapp/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManger.mainBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(AppRoutes.homeRoute);
          },
          failure: (error) {
            setupErrorState(context, "Login Failed");
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15MediumBlack,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14SemiBoldBlue,
            ),
          ),
        ],
      ),
    );
  }
}
