import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 16,
            ),
            child: const DoctorSpecialityItem(),
          );
        },
      ),
    );
  }
}
