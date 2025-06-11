import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/projects/data/models/projects_model.dart';
import 'package:kerlos_sherif/features/projects/presentation/views/widgets/projects_grid_view_builder_body.dart';

import '../../../../../core/widgets/custom_firestore_gridview_builder.dart';

class ProjectsDesktopViewBody extends StatelessWidget {
  const ProjectsDesktopViewBody(
      {super.key, required this.skillsStyle, required this.sizedBoxHeight});

  final TextStyle skillsStyle;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: skillsStyle,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        CustomFirestoreGridViewBuilder<Project>(
          collectionName: 'projects',
          fromFirestore: (doc) => Project.fromFirestore(doc),
          itemBuilder: (project) => ProjectsGridViewBuilderBody<Project>(
            data: project,
            getTitle: (project) => project.title,
            getImage: (project) => project.cover,
            getDescription: (project) => project.description,
          ),
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.95,
        )
      ],
    );
  }
}
