import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/main/widgets/navbar_deck_bottom.dart';
import 'package:kerlos_sherif/features/main/widgets/navbar_deck_contact_bottom.dart';

import '../../../core/utils/styles.dart';

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        height: 80,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavbarDeskBottom(
                text: 'About',
              ),
              NavbarDeskBottom(
                text: 'Projects',
              ),
              NavbarDeskBottom(
                text: 'Certificates',
              ),
              NavbarDeckContactBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
