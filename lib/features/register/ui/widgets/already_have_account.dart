import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        // textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account?',
              style: TextStyles.font14RegularGrey,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(AppRoutes.loginRoute);
                },
              text: "Sign in",
              style: TextStyles.font14MediumBlue,
            ),
          ],
        ),
      ),
    );
  }
}
