import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<CategoriesData> categoriesData;
  const DoctorSpecialityListView({super.key, required this.categoriesData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoriesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 16,
            ),
            child:  DoctorSpecialityItem(
              categoriesData: categoriesData,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
