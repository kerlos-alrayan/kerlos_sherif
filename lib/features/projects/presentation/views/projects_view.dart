import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/res/responsive.dart';
import 'package:kerlos_sherif/features/projects/presentation/views/projects_desktop.dart';
import 'package:kerlos_sherif/features/projects/presentation/views/projects_mobile.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProjectsMobile(),
      tablet: ProjectsMobile(),
      desktop: ProjectsDesktop(),
    );
  }
}
