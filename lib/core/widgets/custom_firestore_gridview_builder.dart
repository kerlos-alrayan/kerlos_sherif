import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/widgets/custom_gridview_builder.dart';

class CustomFirestoreGridViewBuilder<T> extends StatelessWidget {
  final String collectionName;
  final T Function(DocumentSnapshot doc) fromFirestore;
  final Widget Function(T data) itemBuilder;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;

  const CustomFirestoreGridViewBuilder({
    super.key,
    required this.collectionName,
    required this.fromFirestore,
    required this.itemBuilder,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.childAspectRatio,
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
            return const Center(child: CircularProgressIndicator());
          }

          final items =
              snapshot.data!.docs.map((doc) => fromFirestore(doc)).toList();

          if (items.isEmpty) {
            return const Center(child: Text('No data available now'));
          }

          return CustomGridViewBuilder<T>(
            itemCount: items.length,
            data: items,
            itemBuilder: itemBuilder,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: childAspectRatio,
          );
        },
      ),
    );
  }
}
