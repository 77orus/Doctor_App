import 'package:doctoapp/core/helpers/images.dart';
import 'package:doctoapp/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Hossam!",
              style: TextStyles.font18BoldBlack,
            ),
            Text(
              "How are you today?",
              style: TextStyles.font13RegularGrey,
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          ImagesManager.notification,
        ),
      ],
    );
  }
}
