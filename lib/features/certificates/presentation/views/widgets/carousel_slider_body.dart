import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CarouselSliderBody<T> extends StatelessWidget {
  final T data;
  final String Function(T) getImage;

  const CarouselSliderBody({
    super.key,
    required this.data,
    required this.getImage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xfff1f1f1),
          //     blurRadius: 10,
          //     offset: Offset(0, 2),
          //   ),
          // ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            fit: BoxFit.contain,
            imageUrl: getImage(data),
            width: 700,
            height: 500,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
