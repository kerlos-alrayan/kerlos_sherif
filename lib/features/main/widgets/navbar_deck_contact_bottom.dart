import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class NavbarDeckContactBottom extends StatelessWidget {
  const NavbarDeckContactBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160,
        height: 40,
        decoration: BoxDecoration(
            color: Color(0xff4C77BD), borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
              'Contact',
              style: Styles.textStyle24.copyWith(color: Colors.white),
            )),
      ),
    );
  }
}
