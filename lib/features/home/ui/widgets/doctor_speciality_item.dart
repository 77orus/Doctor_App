import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.medical_services,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Cardiologist',
          style: TextStyles.font13RegularGrey.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
