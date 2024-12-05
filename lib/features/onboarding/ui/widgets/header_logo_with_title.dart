import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeaderLogoWithTitle extends StatelessWidget {
  const HeaderLogoWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImagesManager.docDocLogo,
          ),
          SizedBox(width: 5.w),
          Text(
            'Docdoc',
            style: TextStyles.font24BoldBlack,
          ),
        ],
      ),
    );
  }
}
