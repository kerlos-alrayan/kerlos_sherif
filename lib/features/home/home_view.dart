import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/home/home_desktop.dart';
import 'package:kerlos_sherif/features/home/home_mobile.dart';
import 'package:kerlos_sherif/features/home/home_teblet.dart';

import '../../core/res/responsive.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}
