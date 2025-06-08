import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';

class NavbarMobile extends StatelessWidget {
  const NavbarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff809ECF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'K',
                  style: Styles.textStyle35.copyWith(color: Colors.white),
                ),
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, size: 40, color: Color(0xff809ECF)),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
