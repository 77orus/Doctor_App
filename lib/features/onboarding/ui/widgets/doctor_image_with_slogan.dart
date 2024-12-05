import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageWithSlogan extends StatelessWidget {
  const DoctorImageWithSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          ImagesManager.docDocLogoLowOpacity,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.15, 0.6],
            ),
          ),
          child: Image.asset(
            ImagesManager.onBoardingDoctor,
          ),
        ),
        Positioned(
          bottom: 20,
          right: 60,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BoldBlue,
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
