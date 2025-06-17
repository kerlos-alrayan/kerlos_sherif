import 'package:flutter/material.dart';

class CustomClickBottom extends StatelessWidget {
  const CustomClickBottom({
    super.key,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.text,
  });

  final double width;
  final double height;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Color(0xff4C77BD), borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          text,
          style: textStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
