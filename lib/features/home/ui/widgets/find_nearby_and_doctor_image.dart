import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/helpers/padding_helpers.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindNearbyContainerWithDoctor extends StatelessWidget {
  const FindNearbyContainerWithDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: Stack(
        // alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  ImagesManager.patternBackground,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: TextStyles.font14RegularGrey.copyWith(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                verticalSpace(10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Find Nearby",
                      style: TextStyles.font12RegularBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -27,
            right: 16,
            child: Image.asset(
              ImagesManager.doctor,
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
