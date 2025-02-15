import 'package:doctoapp/core/themes/colors.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final List<CategoriesData> categoriesData;
  final int index;
  final int selectedIndex;
  const DoctorSpecialityItem({
    super.key,
    required this.categoriesData,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selectedIndex == index
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManger.mainBlue,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.medical_services,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
              )
            : const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.medical_services,
                  color: Colors.white,
                  size: 25,
                ),
              ),
        const SizedBox(height: 8),
        Text(
          categoriesData[index].name,
          style: selectedIndex == index
              ? TextStyles.font14SemiBoldBlue.copyWith(
                  color: Colors.black,
                )
              : TextStyles.font13RegularGrey.copyWith(
                  color: Colors.black,
                ),
        ),
      ],
    );
  }
}
