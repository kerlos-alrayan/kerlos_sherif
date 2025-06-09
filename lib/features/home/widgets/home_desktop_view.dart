import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/home/widgets/about_me.dart';
import 'package:kerlos_sherif/features/home/widgets/custom_image.dart';
import 'package:kerlos_sherif/features/home/widgets/name_cv_section.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
        ),
        // My name And CV
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Container(
            height: 430,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // My Image
                  CustomImage(width: 350, height: 350),
                  // Name Section
                  NameAndCVSection(
                    nameStyle: Styles.textStyle80,
                    shortAboutStyle:
                        Styles.textStyle30.copyWith(color: Color(0xff767474)),
                    width: MediaQuery.of(context).size.width *0.4,
                    height: 90,
                    downloadCVWidth: 233,
                    downloadCVHeight: 65,
                    downloadCVStyle: Styles.textStyle30,
                    SizedBoxHeight: 32,
                  ),
                ],
              ),
            ),
          ),
        ),

        // About Me
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 60),
          child: AboutMe(
            titleStyle: Styles.textStyle40,
            contactStyle: Styles.textStyle26,
            sizedBoxHeight: 35,
            contactHeight: 150,
            paddingHorizontal: 45,
          ),
        ),
      ],
    );
  }
}
