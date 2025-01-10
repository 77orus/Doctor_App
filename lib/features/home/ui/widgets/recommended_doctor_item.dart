import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/padding_helpers.dart';

class RecommendedDoctorsItem extends StatelessWidget {
  const RecommendedDoctorsItem({
    super.key,
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
              'Dr. John Doe',
              style: TextStyles.font18BoldBlack,
            ),
            subtitle: Column(
              children: [
                Text(
                  "MBBS, MD - General Medicine, DM - Cardiology",
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
