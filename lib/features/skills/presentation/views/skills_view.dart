import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/res/responsive.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/skills_decktop.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/skills_mobile.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SkillsMobile(),
        tablet: SkillsMobile(),
        desktop: SkillsDesktop());
  }
}
