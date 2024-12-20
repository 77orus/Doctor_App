import 'package:doctoapp/core/helpers/app_regex.dart';
import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/widgets/app_text_form_field.dart';
import 'package:doctoapp/features/login/ui/widgets/password_validation.dart';
import 'package:doctoapp/features/register/logic/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFormsField extends StatefulWidget {
  const RegisterFormsField({super.key});

  @override
  State<RegisterFormsField> createState() => _RegisterFormsFieldState();
}

class _RegisterFormsFieldState extends State<RegisterFormsField> {
  bool hasUperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  bool isSecure = true;
  bool isConfirmSecure = true;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordValidationListner();
  }

  setupPasswordValidationListner() {
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
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<RegisterCubit>();

    return Form(
      key: cubit.registerFormKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: cubit.nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter valid name';
              }
            },
            hintText: 'name',
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Enter valid email";
              }
              return null;
            },
            hintText: 'email',
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Enter valid passowd';
              }
            },
            obscureText: isSecure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isSecure = !isSecure;
                });
              },
              icon: Icon(isSecure ? Icons.visibility : Icons.visibility_off),
            ),
            hintText: 'password',
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.confirmPasswordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return "Enter valid password";
              } else if (value != cubit.passwordController.text) {
                return "Psasword dosnt match";
              }
            },
            obscureText: isConfirmSecure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isConfirmSecure = !isConfirmSecure;
                });
              },
              icon: Icon(
                  isConfirmSecure ? Icons.visibility : Icons.visibility_off),
            ),
            
            hintText: 'Re-password',
          ),
          verticalSpace(6),
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
