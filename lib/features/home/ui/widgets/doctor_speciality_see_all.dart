import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityAndSeeAllButton extends StatelessWidget {
  const DoctorSpecialityAndSeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18BoldBlack,
        ),
        Text(
          'See All',
          style: TextStyles.font12RegularBlue,
        ),
      ],
    );
  }
}
