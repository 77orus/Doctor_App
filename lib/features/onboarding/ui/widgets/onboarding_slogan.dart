
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSlogan extends StatelessWidget {
  const OnBoardingSlogan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Text(
        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
        textAlign: TextAlign.center,
        style: TextStyles.font13RegularGrey,
      ),
    );
  }
}
