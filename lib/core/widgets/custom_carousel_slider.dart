import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider<T> extends StatelessWidget {
  final List<T> data;
  final Widget Function(T data) itemBuilder;
  final double height;
  final double viewportFraction;
  final Duration autoPlayInterval;

  const CustomCarouselSlider({
    super.key,
    required this.data,
    required this.itemBuilder,
    required this.height,
    this.viewportFraction = 0.7,
    this.autoPlayInterval = const Duration(seconds: 5),
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: data.length,
      options: CarouselOptions(
        height: height,
        autoPlay: true,
        autoPlayInterval: autoPlayInterval,
        enableInfiniteScroll: true,
        viewportFraction: viewportFraction,
        padEnds: false,
        scrollDirection: Axis.horizontal,
        reverse: false,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: itemBuilder(data[itemIndex]),
        );
      },
    );
  }
}
