import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

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
          success: (categoriesData) {
            return Expanded(
              child: Column(
                children: [
                  DoctorSpecialityListView(categoriesData: categoriesData),
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
