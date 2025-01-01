import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/themes/colors.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasUperCase,
      required this.hasLowerCase,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasMinLength});

  final bool hasUperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRowValidation(context,
            text: "At least 8 characters", isValid: hasMinLength),
        verticalSpace(2),
        buildRowValidation(context,
            text: "At least 1 uppercase letter", isValid: hasUperCase),
        verticalSpace(2),
        buildRowValidation(context,
            text: "At least 1 lowercase letter", isValid: hasLowerCase),
        verticalSpace(2),
        buildRowValidation(context,
            text: "At least 1 number", isValid: hasNumber),
        verticalSpace(2),
        buildRowValidation(context,
            text: "At least 1 special character", isValid: hasSpecialChar),
      ],
    );
  }

  buildRowValidation(
    BuildContext context, {
    required String text,
    required bool isValid,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor:
              isValid ? ColorsManger.greenColor : ColorsManger.greyColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: TextStyles.font13RegularGrey.copyWith(
              color: isValid ? ColorsManger.greyColor : ColorsManger.blackColor,
              decoration:
                  isValid ? TextDecoration.lineThrough : TextDecoration.none,
              decorationColor: ColorsManger.greenColor,
            ),
          ),
        ),
      ],
    );
  }
}
