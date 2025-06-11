import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../constants.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';


class SkillsGridViewBuilderBody<T> extends StatelessWidget {
  final T data;
  final String Function(T) getTitle;
  final String Function(T) getImage;

  const SkillsGridViewBuilderBody({
    super.key,
    required this.data,
    required this.getTitle,
    required this.getImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 225,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: getImage(data),
            width: 80,
            height: 80,
            placeholder: (context, url) =>
                CircularProgressIndicator(strokeWidth: 2),
            errorWidget: (context, url, error) =>
                Icon(Icons.error, color: Colors.red),
          ),
          const SizedBox(width: 8),
          Text(
            getTitle(data),
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle30,
          ),
        ],
      ),
    );
  }
}