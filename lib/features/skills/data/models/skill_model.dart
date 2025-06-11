import 'package:cloud_firestore/cloud_firestore.dart';

class Skill {
  final String skill;
  final String icon;

  Skill({required this.skill, required this.icon});

  factory Skill.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Skill(
      skill: data['skill'] ?? '',
      icon: data['icon'] ?? '',
    );
  }
}
