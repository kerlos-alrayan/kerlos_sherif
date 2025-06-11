import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/skills/presentation/views/widgets/skills_grid_view_builder_body.dart';

import '../../../../../core/widgets/custom_firestore_gridview_builder.dart';
import '../../../data/models/skill_model.dart';

class CustomSkillsBody extends StatelessWidget {
  const CustomSkillsBody(
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
          'Skills',
          style: skillsStyle,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        CustomFirestoreGridViewBuilder<Skill>(
          collectionName: 'skills',
          fromFirestore: (doc) => Skill.fromFirestore(doc),
          itemBuilder: (skill) => SkillsGridViewBuilderBody<Skill>(
            data: skill,
            getTitle: (skill) => skill.skill,
            getImage: (skill) => skill.icon,
          ),
          crossAxisCount: 5,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          childAspectRatio: 2.2,
        )
      ],
    );
  }
}
