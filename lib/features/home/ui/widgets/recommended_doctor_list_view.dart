import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:doctoapp/features/home/ui/widgets/recommended_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDoctorListView extends StatelessWidget {
  final List<Doctors> doctorsData;
  const RecommendedDoctorListView({super.key, required this.doctorsData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsData.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 16.0.h,
            ),
            child:  RecommendedDoctorsItem(
              doctorsData: doctorsData,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
