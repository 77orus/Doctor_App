import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font14RegularGrey,
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: TextStyles.font14MediumBlack,
          ),
          TextSpan(
            text: " And",
            style: TextStyles.font14RegularGrey,
          ),
          TextSpan(
            text: " Privacy Policy.",
            style: TextStyles.font14MediumBlack,
          ),
        ],
      ),
    );
  }
}
