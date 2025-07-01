import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kerlos_sherif/core/utils/shimmer.dart';
import 'package:kerlos_sherif/features/home/data/home_model.dart';
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
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('my_image').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('There is an error: ${snapshot.error}'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CustomLoadingImage(width: width, height: height,);
        }
        final myImage = HomeModel.fromFirestore(snapshot.data!.docs.first).myImage;
        return SizedBox(
          width: width,
          height: height,
          child: CachedNetworkImage(
            imageUrl:
            myImage,
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
