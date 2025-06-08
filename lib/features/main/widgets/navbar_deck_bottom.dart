import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class NavbarDeskBottom extends StatelessWidget {
  const NavbarDeskBottom({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: Styles.textStyle24.copyWith(color: Color(0xff4C77BD)),
      ),
    );
  }
}
