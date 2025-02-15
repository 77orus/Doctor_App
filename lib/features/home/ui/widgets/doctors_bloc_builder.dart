import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';
import 'package:doctoapp/features/home/ui/widgets/recommended_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSuccess || current is DoctorFailure,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsData) {
            return setuptSuccess(doctorsData);
          },
          doctorFailure: (message) {
            return setupError("Some thing error while fetching doctos");
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  setuptSuccess(doctorsData) {
    return RecommendedDoctorListView(
      doctorsData: doctorsData,
    );
  }

  setupError(message) {
    return message;
  }
}
