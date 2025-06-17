import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/utils/styles.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/custom_contact_me.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/get_in_touch.dart';

class ContactViewMobBody extends StatelessWidget {
  const ContactViewMobBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1.07,
        child: Column(
          children: [
            // Get In Touch
            Expanded(
              child: GetInTouch(
                getInTouchStyle:
                    Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                textFormFieldWidth: 250,
                textFormFieldHeight: 100,
                customClickBottomWidth: 150,
                customClickBottomHeight: 50,
                sizedBoxHeight: 8,
                hintStyle:
                    Styles.textStyle14.copyWith(color: Color(0xff7D7D7D)),
                customClickBottomtextStyle: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // Contact Me
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ContactMe(
                  spacing: 10,
                  contactStyle: Styles.textStyle14.copyWith(
                      fontFamily: 'Epilogue', color: Color(0xff4C77BD)),
                  contactMeStyle: Styles.textStyle30,
                  customContactTextStyle: Styles.textStyle16, feelFreeStyle: Styles.textStyle14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
