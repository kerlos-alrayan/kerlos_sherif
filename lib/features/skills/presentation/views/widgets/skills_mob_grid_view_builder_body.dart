import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:kerlos_sherif/core/utils/styles.dart';

class SkillsMobGridViewBuilderBody<T> extends StatelessWidget {
  final T data;
  final String Function(T) getTitle;
  final String Function(T) getImage;

  const SkillsMobGridViewBuilderBody({
    super.key,
    required this.data,
    required this.getTitle,
    required this.getImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: getImage(data),
              width: 80,
              height: 80,
              placeholder: (context, url) =>
                  CircularProgressIndicator(strokeWidth: 2),
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, color: Colors.red),
            ),
          ),
          Flexible(
            child: Text(
              getTitle(data),
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle24,
            ),
          ),
        ],
      ),
    );
  }
}
