import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/certificates/presentation/views/certificates_view.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/contact_view.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/skills_view.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/projects/presentation/views/projects_view.dart';

class BodyUtils {
  static List<Widget> views = [
    HomeView(),
    SkillsView(),
    ProjectsView(),
    CertificatesView(),
    ContactView(),
  ];
}
