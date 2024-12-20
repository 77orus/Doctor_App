import 'package:doctoapp/core/helpers/animations.dart';
import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/features/register/logic/cubit/register_cubit.dart';
import 'package:doctoapp/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class RegisterBlocListner extends StatelessWidget {
  const RegisterBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, currnet) =>
          currnet is Loading || currnet is Success || currnet is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: Lottie.asset(
                  Animations.loadingAnimation,
                ),
              ),
            );
          },
          success: (registerData) {
            context.pop();
            context.pushReplacementNamed(AppRoutes.loginRoute);
          },
          failure: (error) {
            setupErrorState(context, error);
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
