import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/core/themes/colors.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
      ),
      child: TextButton(
        onPressed: () {
          context.pushNamed(AppRoutes.loginRoute);
        },
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size(double.infinity, 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: ColorsManger.mainBlue,
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16BoldWhite,
        ),
      ),
    );
  }
}
