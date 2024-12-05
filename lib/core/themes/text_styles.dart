import 'package:doctoapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle font32BoldBlue = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font24BoldBlack = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorsManger.blackColor,
  );

  static TextStyle font13RegularGrey = const TextStyle(
    fontSize: 13,
    color: ColorsManger.greyColor,
  );

  static TextStyle font16BoldWhite = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorsManger.whiteColor,
  );
}
