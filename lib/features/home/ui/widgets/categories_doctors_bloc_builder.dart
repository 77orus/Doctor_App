
import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctoapp/features/home/ui/widgets/recommended_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesAndDoctorsBlocBuilder extends StatelessWidget {
  const CategoriesAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (value) {
            return Expanded(
              child: Column(
                children: [
                  DoctorSpecialityListView(categoriesData: value.data),
                  verticalSpace(16),
                  RecommendedDoctorListView(
                    doctorsData: value.data[0].doctorsData,
                  ),
                ],
              ),
            );
          },
          failure: (value) {
            return const Text('Error');
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}