import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/projects/presentation/views/widgets/projects_desktop_view_body.dart';

import '../../../../../core/utils/styles.dart';

class ProjectsDesktopView extends StatelessWidget {
  const ProjectsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 80),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: const ProjectsDesktopViewBody(
          skillsStyle: Styles.textStyle40,
          sizedBoxHeight: 35,
        ),
      ),
    );
  }
}
