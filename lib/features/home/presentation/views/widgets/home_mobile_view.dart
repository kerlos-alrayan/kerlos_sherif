import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/home/presentation/views/widgets/about_me.dart';
import 'package:kerlos_sherif/features/home/presentation/views/widgets/custom_image.dart';
import 'package:kerlos_sherif/features/home/presentation/views/widgets/name_cv_section.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 35,
      children: [
        // My Image
        CustomImage(
          width: 250,
          height: 250,
        ),

        // Name And CV
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: NameAndCVSection(
            nameStyle: Styles.textStyle45,
            shortAboutStyle:
                Styles.textStyle24.copyWith(color: Color(0xff767474)),
            width: double.infinity,
            height: 144,
            downloadCVWidth: 200,
            downloadCVHeight: 54,
            downloadCVStyle: Styles.textStyle24,
            sizedBoxHeight: 24,
          ),
        ),

        // About Me
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AboutMe(
            titleStyle:
                Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
            contactStyle: Styles.textStyle16,
            sizedBoxHeight: 12,
            paddingHorizontal: 16,
          ),
        ),
      ],
    );
  }
}
