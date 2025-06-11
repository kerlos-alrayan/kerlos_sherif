import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/widgets/skills_mobile_body.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SkillsMobileBody(skillsStyle: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold), sizedBoxHeight: 8,);
  }
}
