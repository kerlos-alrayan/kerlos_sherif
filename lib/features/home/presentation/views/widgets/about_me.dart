import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe(
      {super.key,
      required this.titleStyle,
      required this.contactStyle,
      required this.sizedBoxHeight,
      this.contactHeight,
      required this.paddingHorizontal});

  final TextStyle titleStyle;
  final TextStyle contactStyle;
  final double sizedBoxHeight;
  final double? contactHeight;
  final double paddingHorizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32), color: Colors.white),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: titleStyle,
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            SizedBox(
                width: double.infinity,
                height: contactHeight,
                child: Text(
                  'I am a Flutter developer with studying Dart and Flutter framework to build cross_platform mobile apps. '
                  'I have developed several projects, and i am well versed in populae tools’s.'
                  ' My goal is to continue growing as a developer and contribute to innovative app development.',
                  style: contactStyle,
                )),
          ],
        ),
      ),
    );
  }
}
