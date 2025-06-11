import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/widgets/custom_skills_body.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: const CustomSkillsBody(
          skillsStyle: Styles.textStyle40,
          sizedBoxHeight: 35,
        ),
      ),
    );
  }
}


