import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/padding_helpers.dart';

class RecommendedDoctorsItem extends StatelessWidget {
  final List<Doctors> doctorsData;
  final int index;
  const RecommendedDoctorsItem({
    super.key,
    required this.doctorsData, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 110.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(ImagesManager.doctor),
              ),
            ),
          ),
        ),
        horizontalSpace(16),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(
              doctorsData[index].name ?? "Default Name",
              style: TextStyles.font18BoldBlack,
            ),
            subtitle: Column(
              children: [
                Text(
                  doctorsData[index].description ?? "default description",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font14RegularGrey,
                ),
                Row(
                  children: [
                    Text(
                      'Cardiologist',
                      style: TextStyles.font14RegularGrey,
                    ),
                    horizontalSpace(8),
                    Text(
                      '4.5',
                      style: TextStyles.font14RegularGrey,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
