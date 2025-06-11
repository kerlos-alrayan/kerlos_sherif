import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kerlos_sherif/core/utils/shimmer.dart';
import 'package:shimmer/shimmer.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl:
        'https://res.cloudinary.com/dgab5vk9t/image/upload/v1749483021/1743093794635_kbzk5v.jpg',
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: width / 2,
          backgroundImage: imageProvider,
        ),
        placeholder: (context, url) => CustomLoadingImage(
          width: width,
          height: height,
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Colors.red,
        ),
      ),
    );
  }
}
class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ShimmerColors.baseShimmerColor,
      highlightColor: ShimmerColors.highlightShimmerColor,
      child: SizedBox(
        width: width,
        height: height,
        child: CircleAvatar(
          radius: width / 2,
          backgroundColor: ShimmerColors.widgetShimmerColor,
        ),
      ),
    );
  }
}
