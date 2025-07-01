import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CustomClickBottom extends StatelessWidget {
  const CustomClickBottom({
    super.key,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.text,
  });

  final double width;
  final double height;
  final String text;
  final TextStyle textStyle;

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('cv_link').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error loading CV link.');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Text('No CV link available.');
        }

        final data = snapshot.data!.docs.first.data() as Map<String, dynamic>;
        final url = data['cv_link'] ?? '';

        if (url.isEmpty) {
          return const Text('CV link is currently unavailable.');
        }

        return InkWell(
          onTap: () => _launchURL(url),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xff4C77BD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                text,
                style: textStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
