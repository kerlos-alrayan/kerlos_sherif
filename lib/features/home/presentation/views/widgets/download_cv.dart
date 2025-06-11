import 'package:flutter/material.dart';


class DownloadCV extends StatelessWidget {
  const DownloadCV({
    super.key, required this.width, required this.height, required this.downloadCVStyle,
  });

  final double width;
  final double height;
  final TextStyle downloadCVStyle;

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
              'Download CV',
              style: downloadCVStyle.copyWith(color: Colors.white),
            )),
      ),
    );
  }
}
