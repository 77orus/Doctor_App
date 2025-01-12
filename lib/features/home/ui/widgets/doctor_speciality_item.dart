import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final List<CategoriesData> categoriesData;
  final int index;
  const DoctorSpecialityItem({
    super.key,
    required this.categoriesData, required this.index,
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
          categoriesData[index].name,
          style: TextStyles.font13RegularGrey.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
