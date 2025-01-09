import 'package:doctoapp/features/home/ui/widgets/recommended_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDoctorListView extends StatelessWidget {
  const RecommendedDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 16.0.h,
            ),
            child: const RecommendedDoctorsItem(),
          );
        },
      ),
    );
  }
}
