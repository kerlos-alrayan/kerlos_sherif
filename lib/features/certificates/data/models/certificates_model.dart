import 'package:cloud_firestore/cloud_firestore.dart';

class Certificates {
  final String image;

  Certificates({required this.image});

  factory Certificates.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Certificates(
      image: data['image'] ?? '',
    );
  }
}
