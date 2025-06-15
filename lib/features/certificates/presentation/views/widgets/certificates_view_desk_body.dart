import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/widgets/custom_firestore_carousel_slider.dart';
import 'package:kerlos_sherif/features/certificates/data/models/certificates_model.dart';
import 'package:kerlos_sherif/features/certificates/presentation/views/widgets/carousel_slider_body.dart';

import '../../../../../core/utils/styles.dart';

class CertificatesViewDeskBody extends StatelessWidget {
  const CertificatesViewDeskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Text(
            'Certificates',
            style: Styles.textStyle40,
          ),
        ),
        CustomFirestoreCarouselSlider<Certificates>(
          collectionName: 'certificates',
          fromFirestore: (doc) => Certificates.fromFirestore(doc),
          itemBuilder: (certificates) => CarouselSliderBody(
            data: certificates,
            getImage: (certificates) => certificates.image,
            imageWidth: 700,
            imageHeight: 500,
          ),
          carouselSliderHeight: 550,
          autoPlay: true,
          enlargeCenterPage: true, viewportFraction: 0.7,
        ),
      ],
    );
  }
}
