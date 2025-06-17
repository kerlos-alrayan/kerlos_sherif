import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/projects/presentation/views/widgets/custo_carousels_lider_body.dart';

import '../../../../../core/widgets/custom_firestore_carousel_slider.dart';
import '../../../data/models/projects_model.dart';

class ProjectsMobileBody extends StatelessWidget {
  const ProjectsMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Projects',
              style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CustomFirestoreCarouselSlider<Project>(
            collectionName: 'projects',
            fromFirestore: (doc) => Project.fromFirestore(doc),
            itemBuilder: (project) => CustomCarouselSliderBody(
              data: project,
              getTitle: (project) => project.title,
              getImage: (project) => project.cover,
              getDescription: (project) => project.description,
            ),
            carouselSliderHeight: 330,
            autoPlay: true,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
          ),
          SizedBox(
            height: 24,
          ),
        ]);
  }
}
