import 'package:cloud_firestore/cloud_firestore.dart';

class Project {
  final String title;
  final String description;
  final String cover;

  Project(
      {required this.title, required this.description, required this.cover});

  factory Project.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Project(
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      cover: data['cover'] ?? '',
    );
  }
}
