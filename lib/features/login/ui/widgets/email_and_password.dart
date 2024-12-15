import 'package:doctoapp/core/helpers/app_regex.dart';
import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoapp/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obscureText = true;

  bool hasUperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    passwordController.addListener(() {
      setState(() {
        hasUperCase = AppRegex.isHasUperCase(passwordController.text);
        hasLowerCase = AppRegex.isHasLowerCase(passwordController.text);
        hasNumber = AppRegex.isHasNumber(passwordController.text);
        hasSpecialChar =
            AppRegex.isHasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.isHasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().loginFormKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Enter valid email";
              }
              return null;
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: "Password",
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return "Enter valid password";
              }
            },
            obscureText: obscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: obscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
          ),
          verticalSpace(16),
          PasswordValidation(
            hasUperCase: hasUperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
