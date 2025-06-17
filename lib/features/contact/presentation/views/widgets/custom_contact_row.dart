import 'package:flutter/material.dart';

class CustomContactRow extends StatelessWidget {
  const CustomContactRow(
      {super.key,
        required this.imagePath,
        required this.text,
        required this.customContactTextStyle});
  final String imagePath;
  final String text;
  final TextStyle customContactTextStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
        Text(
          text,
          style: customContactTextStyle,
        ),
      ],
    );
  }
}
