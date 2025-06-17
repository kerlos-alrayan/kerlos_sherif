import 'package:flutter/material.dart';
import 'package:kerlos_sherif/features/contact/presentation/views/widgets/custom_text_form_field.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_click_bottom.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch(
      {super.key,
      required this.getInTouchStyle,
      this.textFormFieldHeight,
      required this.textFormFieldWidth,
      required this.customClickBottomWidth,
      required this.customClickBottomHeight,
      required this.sizedBoxHeight,
      required this.hintStyle, required this.customClickBottomtextStyle});
  final TextStyle getInTouchStyle;
  final double? textFormFieldHeight;
  final double textFormFieldWidth;
  final double customClickBottomWidth;
  final double customClickBottomHeight;
  final double sizedBoxHeight;
  final TextStyle hintStyle;
  final TextStyle customClickBottomtextStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Get In Touch',
                  style: getInTouchStyle,
                ),
                SizedBox(height: sizedBoxHeight),
                CustomTextInputField(
                  customHintText: 'Name',
                  hintStyle: hintStyle,
                  textFormFieldWidth: textFormFieldWidth,
                ),
                CustomTextInputField(
                  customHintText: 'Email',
                  hintStyle: hintStyle,
                  textFormFieldWidth: textFormFieldWidth,
                ),
                CustomTextInputField(
                  textFormFieldHeight: textFormFieldHeight,
                  customHintText: 'Message',
                  hintMaxLines: 6,
                  hintStyle: hintStyle,
                  textFormFieldWidth: textFormFieldWidth,
                ),
                SizedBox(height: 80),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomClickBottom(
                width: customClickBottomWidth,
                height: customClickBottomHeight,
                textStyle: customClickBottomtextStyle,
                text: 'Submit Now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
