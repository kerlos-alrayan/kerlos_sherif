import 'package:cloud_firestore/cloud_firestore.dart';

class HomeModel {
  final String myImage;

  HomeModel({required this.myImage});

  factory HomeModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return HomeModel(
      myImage: data['my_image'] ?? '',
    );
  }
}
