import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/custom_contact_me.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/get_in_touch.dart';

class ContactViewDeskBody extends StatelessWidget {
  const ContactViewDeskBody({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 45),
      child: SizedBox(
        width: double.infinity,
        height: 520,
        child: Row(
          children: [
            // Get In Touch
            Expanded(
              child: GetInTouch(
                getInTouchStyle:
                    Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                textFormFieldWidth: 350,
                customClickBottomWidth: 200,
                customClickBottomHeight: 55,
                sizedBoxHeight: 24,
                hintStyle:
                    Styles.textStyle18.copyWith(color: Color(0xff7D7D7D)),
                customClickBottomtextStyle: Styles.textStyle24,
              ),
            ),
            SizedBox(
              width: w * 0.1,
            ),
            // Contact Me
            Expanded(
              child: ContactMe(
                spacing: 16,
                contactStyle: Styles.textStyle18.copyWith(
                  fontFamily: 'Epilogue',
                  color: Color(0xff4C77BD),
                ),
                contactMeStyle: Styles.textStyle40,
                customContactTextStyle: Styles.textStyle22,
                feelFreeStyle: Styles.textStyle16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


