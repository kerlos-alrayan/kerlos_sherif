import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/custom_contact_row.dart';

import '../../../../../core/utils/assets.dart';

class ContactMe extends StatelessWidget {
  const ContactMe(
      {super.key,
        required this.spacing,
        required this.contactStyle,
        required this.contactMeStyle,
        required this.customContactTextStyle,
        required this.feelFreeStyle});

  final double spacing;
  final TextStyle contactStyle;
  final TextStyle contactMeStyle;
  final TextStyle customContactTextStyle;
  final TextStyle feelFreeStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CONTACT',
          style: contactStyle,
        ),
        Text(
          'Contact Me',
          style: contactMeStyle,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Feel free to reach out for any inquiries, collaborations, or project discussions.',
          style: feelFreeStyle,
        ),
        SizedBox(
          height: 8,
        ),
        CustomContactRow(
          imagePath: AssetsData.contactMeLocation,
          text: 'Cairo,Egypt',
          customContactTextStyle: customContactTextStyle,
        ),
        CustomContactRow(
          imagePath: AssetsData.contactMePhone,
          text: '+201551948798',
          customContactTextStyle: customContactTextStyle,
        ),
        CustomContactRow(
          imagePath: AssetsData.contactMeEmail,
          text: 'kerlossheref@gmail.com',
          customContactTextStyle: customContactTextStyle,
        ),
      ],
    );
  }
}
