import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/widgets/custom_firestore_carousel_slider.dart';
import 'package:kerlos_sherif/features/certificates/presentation/views/widgets/carousel_slider_body.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/certificates_model.dart';

class CertificatesViewMobBody extends StatelessWidget {
  const CertificatesViewMobBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Certificates',
              style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          CustomFirestoreCarouselSlider<Certificates>(
            collectionName: 'certificates',
            fromFirestore: (doc) => Certificates.fromFirestore(doc),
            itemBuilder: (certificates) => CarouselSliderBody(
              data: certificates,
              getImage: (certificates) => certificates.image,
              imageWidth: double.infinity,
              imageHeight: 280,
            ),
            carouselSliderHeight: 280,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
          ),
        ],
      ),
    );
  }
}
