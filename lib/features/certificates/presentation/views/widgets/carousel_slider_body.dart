import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kerlos_sherif/core/widgets/custom_loading_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/shimmer.dart';

class CarouselSliderBody<T> extends StatelessWidget {
  final T data;
  final String Function(T) getImage;
  final double imageWidth;
  final double imageHeight;

  const CarouselSliderBody({
    super.key,
    required this.data,
    required this.getImage,
    required this.imageWidth,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl: getImage(data),
        width: imageWidth,
        height: imageHeight,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: ShimmerColors.baseShimmerColor,
          highlightColor: ShimmerColors.highlightShimmerColor,
          child: CustomLoadingContainer(
              width: imageWidth, height: imageHeight, borderRadius: 16),
        ),
        errorWidget: (context, url, error) =>
            const Icon(Icons.error, color: Colors.red),
      ),
    );
  }
}
