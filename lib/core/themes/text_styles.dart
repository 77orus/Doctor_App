import 'package:doctoapp/core/helpers/font_weights.dart';
import 'package:doctoapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle font32BoldBlue = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font24BoldBlack = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorsManger.blackColor,
  );

  static TextStyle font24BoldBlue = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font12RegularBlue = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font14RegularGrey = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManger.greyColor,
  );

  static TextStyle font14MediumBlack = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManger.blackColor,
  );
  static TextStyle font14MediumBlue = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font13RegularGrey = const TextStyle(
    fontSize: 13,
    color: ColorsManger.greyColor,
  );

  static TextStyle font16BoldWhite = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManger.whiteColor,
  );
}
