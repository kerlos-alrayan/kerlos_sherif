import 'package:flutter/material.dart';
import 'package:kerlos_sherif/constants.dart';
import 'package:kerlos_sherif/features/main/widgets/custom_mob_drawer.dart';
import 'package:kerlos_sherif/features/main/widgets/navbar_desktop.dart';
import 'package:kerlos_sherif/features/main/widgets/navbar_mobile.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/providers/scroll_provider.dart';
import '../../core/res/responsive.dart';
import '../../core/utils/utils.dart';

part 'widgets/_body.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      endDrawer: const CustomMobDrawer(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(92),
        child: Responsive(
          mobile: NavbarMobile(),
          tablet: NavbarMobile(),
          desktop: NavbarDesktop(),
        ),
      ),
      body: Column(
        children: [
          _Body(),
        ],
      ),
    );
  }
}
