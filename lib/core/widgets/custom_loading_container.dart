import 'package:flutter/material.dart';

import '../utils/shimmer.dart';

class CustomLoadingContainer extends StatelessWidget {
  const CustomLoadingContainer(
      {super.key,
        required this.width,
        required this.height,
        required this.borderRadius});

  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: ShimmerColors.widgetShimmerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
