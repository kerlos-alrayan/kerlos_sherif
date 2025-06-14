import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kerlos_sherif/core/widgets/custom_carousel_slider.dart';
import 'package:kerlos_sherif/core/widgets/loading_grid_view_builder_body.dart';

class CustomFirestoreCarouselSlider<T> extends StatelessWidget {
  final String collectionName;
  final T Function(DocumentSnapshot doc) fromFirestore;
  final Widget Function(T data) itemBuilder;
  final double carouselSliderHeight;
  final bool autoPlay;
  final bool? enlargeCenterPage;

  const CustomFirestoreCarouselSlider({
    super.key,
    required this.collectionName,
    required this.fromFirestore,
    required this.itemBuilder,
    required this.carouselSliderHeight,
    required this.autoPlay,
    this.enlargeCenterPage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StreamBuilder<QuerySnapshot>(
        stream:
            FirebaseFirestore.instance.collection(collectionName).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('There is an error: ${snapshot.error}'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.7, // تقلل العرض عشان يبان الفاصل
                  padEnds: false, // عشان يبدأ من أول عنصر مش في النص
                  scrollDirection: Axis.horizontal,
                  reverse: false, // من اليمين لليسار
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        LoadingGridViewBuilderBody());
          }

          final items =
              snapshot.data!.docs.map((doc) => fromFirestore(doc)).toList();

          if (items.isEmpty) {
            return const Center(child: Text('No data available now'));
          }

          return CustomCarouselSlider<T>(
            data: items,
            itemBuilder: itemBuilder,
            height: carouselSliderHeight,
            autoPlay: autoPlay,
            enlargeCenterPage: enlargeCenterPage,
          );
        },
      ),
    );
  }
}
