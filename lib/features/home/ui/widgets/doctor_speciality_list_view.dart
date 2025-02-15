import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/ui/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialityListView extends StatefulWidget {
  final List<CategoriesData> categoriesData;
  const DoctorSpecialityListView({super.key, required this.categoriesData});

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 16,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                context.read<HomeCubit>().getDoctorsList(
                      categoryId: widget.categoriesData[index].id,
                    );
              },
              child: DoctorSpecialityItem(
                categoriesData: widget.categoriesData,
                index: index,
                selectedIndex: selectedIndex,
              ),
            ),
          );
        },
      ),
    );
  }
}
