import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/core/widgets/app_text_button.dart';
import 'package:doctoapp/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doctoapp/features/register/logic/cubit/register_cubit.dart';
import 'package:doctoapp/features/register/ui/widgets/already_have_account.dart';
import 'package:doctoapp/features/register/ui/widgets/register_bloc_listner.dart';
import 'package:doctoapp/features/register/ui/widgets/register_forms_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Text(
                  "Create Account",
                  style: TextStyles.font24BoldBlue,
                ),
                verticalSpace(8),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.font14RegularGrey,
                ),
                verticalSpace(36),
                const RegisterFormsField(),
                verticalSpace(32),
                AppTextButton(
                  title: 'Create Account',
                  onPressed: () {
                    validateThenDoRegister(context);
                  },
                ),
                verticalSpace(40),
                const TermsAndConditions(),
                verticalSpace(24),
                const AlreadyHaveAccount(),
                const RegisterBlocListner(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context
        .read<RegisterCubit>()
        .registerFormKey
        .currentState!
        .validate()) {
      context.read<RegisterCubit>().register();
    }
  }
}
