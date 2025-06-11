import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:kerlos_sherif/core/utils/styles.dart';

class CustomCarouselSliderBody<T> extends StatelessWidget {
  final T data;
  final String Function(T) getTitle;
  final String Function(T) getDescription;
  final String Function(T) getImage;

  const CustomCarouselSliderBody({
    super.key,
    required this.data,
    required this.getTitle,
    required this.getImage,
    required this.getDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffE4E3E3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: getImage(data),
                width: double.infinity,
                height: 250,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator(strokeWidth: 2)),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error, color: Colors.red),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              getTitle(data),
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              getDescription(data),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle18.copyWith(color: const Color(0xff767474)),
            ),
          ),
        ],
      ),
    );
  }
}
