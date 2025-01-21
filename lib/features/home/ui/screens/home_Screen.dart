import 'package:doctoapp/core/di/dependency_injection.dart';
import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/themes/colors.dart';
import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';
import 'package:doctoapp/features/home/ui/widgets/categories_doctors_bloc_builder.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctoapp/features/home/ui/widgets/find_nearby_and_doctor_image.dart';
import 'package:doctoapp/features/home/ui/widgets/home_screen_header.dart';
import 'package:doctoapp/features/home/ui/widgets/recommended_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getHomeData(),
      child: Scaffold(
        backgroundColor: ColorsManger.whiteColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                verticalSpace(12),
                const HomeScreenHeader(),
                verticalSpace(22),
                const FindNearbyContainerWithDoctor(),
                verticalSpace(8),
                const DoctorSpecialityAndSeeAllButton(),
                verticalSpace(16),
                const CategoriesAndDoctorsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

