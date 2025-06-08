import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/home/widgets/download_cv.dart';

class NameAndCVSection extends StatelessWidget {
  const NameAndCVSection(
      {super.key,
      required this.nameStyle,
      required this.shortAboutStyle,
      required this.width,
      required this.height,
      required this.downloadCVWidth,
      required this.downloadCVHeight,
      required this.downloadCVStyle, required this.SizedBoxHeight});

  final TextStyle nameStyle;
  final TextStyle shortAboutStyle;
  final TextStyle downloadCVStyle;

  final double width;
  final double height;
  final double SizedBoxHeight;

  final double downloadCVWidth;
  final double downloadCVHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kerlos Sherif',
          style: nameStyle,
        ),
        SizedBox(
          width: width,
          height: height,
          child: Text(
            'A Flutter Developer passionate about building clean and efficient mobile apps.',
            style: shortAboutStyle,
          ),
        ),
        SizedBox(
          height: SizedBoxHeight,
        ),
        DownloadCV(
          width: downloadCVWidth,
          height: downloadCVHeight,
          downloadCVStyle: downloadCVStyle,
        ),
      ],
    );
  }
}
