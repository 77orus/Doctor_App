import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountSignUp extends StatelessWidget {
  
  const DontHaveAnAccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        // textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account?",
              style: TextStyles.font14RegularGrey,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(AppRoutes.registerRoute);
                },
              text: "Sign Up",
              style: TextStyles.font14MediumBlue,
            ),
          ],
        ),
      ),
    );
  }
}
