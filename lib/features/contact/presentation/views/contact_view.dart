import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/res/responsive.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/contact_view_desk.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/contact_view_mob.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactViewMob(),
      tablet: ContactViewMob(),
      desktop: ContactViewDesk(),
    );
  }
}
