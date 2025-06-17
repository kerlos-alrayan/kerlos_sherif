import 'package:flutter/material.dart';

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    super.key,
    required this.customHintText,
    required this.hintStyle,
    this.hintMaxLines,
    this.textFormFieldHeight,
    required this.textFormFieldWidth,
  });

  final String customHintText;
  final TextStyle hintStyle;
  final int? hintMaxLines;
  final double? textFormFieldHeight;
  final double textFormFieldWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFormFieldWidth,
      height: textFormFieldHeight,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xff7D7D7D),
        ),
      ),
      child: TextFormField(
        maxLines: hintMaxLines ?? 1,
        expands: hintMaxLines == null ? false : false,
        decoration: InputDecoration(
          hintText: customHintText,
          hintStyle: hintStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
