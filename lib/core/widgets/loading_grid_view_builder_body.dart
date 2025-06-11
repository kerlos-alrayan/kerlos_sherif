import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/widgets/custom_loading_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../constants.dart';

import '../../../../../core/utils/shimmer.dart';

class LoadingGridViewBuilderBody<T> extends StatelessWidget {
  const LoadingGridViewBuilderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Shimmer.fromColors(
        baseColor: ShimmerColors.baseShimmerColor,
        highlightColor: ShimmerColors.highlightShimmerColor,
        child: Container(
          width: 100,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: kPrimaryColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomLoadingContainer(
                height: 20,
                width: 50,
                borderRadius: 50,
              ),
              const SizedBox(width: 8),
              CustomLoadingContainer(
                width: 50,
                height: 20,
                borderRadius: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}

