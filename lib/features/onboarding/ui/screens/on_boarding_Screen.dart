import 'package:doctoapp/features/onboarding/ui/widgets/doctor_image_with_slogan.dart';
import 'package:doctoapp/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:doctoapp/features/onboarding/ui/widgets/header_logo_with_title.dart';
import 'package:doctoapp/features/onboarding/ui/widgets/onboarding_slogan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderLogoWithTitle(),
            SizedBox(height: 20.h),
            const DoctorImageWithSlogan(),
            const OnBoardingSlogan(),
            SizedBox(height: 32.h),
            const GetStartedButton(),
          ],
        ),
      ),
    );
  }
}
