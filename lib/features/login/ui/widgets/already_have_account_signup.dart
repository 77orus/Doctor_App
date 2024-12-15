import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountSignup extends StatelessWidget {
  const AlreadyHaveAccountSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        // textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: "Already have an account?",
              style: TextStyles.font14RegularGrey,
            ),
            TextSpan(
              text: "Sign Up",
              style: TextStyles.font14MediumBlue,
            ),
          ],
        ),
      ),
    );
  }
}
