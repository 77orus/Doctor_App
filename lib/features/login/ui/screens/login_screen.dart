import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/core/widgets/app_text_button.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoapp/features/login/ui/widgets/already_have_account_signup.dart';
import 'package:doctoapp/features/login/ui/widgets/email_and_password.dart';
import 'package:doctoapp/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:doctoapp/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(50),
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BoldBlue,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14RegularGrey,
                ),
                verticalSpace(36),
                const EmailAndPassword(),
                verticalSpace(25),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyles.font12RegularBlue,
                  ),
                ),
                verticalSpace(32),
                AppTextButton(
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  title: "Login",
                ),
                verticalSpace(50),
                const TermsAndConditions(),
                verticalSpace(32),
                const DontHaveAnAccountSignUp(),
                const LoginBlocListner(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().loginFormKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin();
    }
  }
}
