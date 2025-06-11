import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, required this.width,required this.height,});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.transparent,
        child: Image.network('https://res.cloudinary.com/dgab5vk9t/image/upload/v1749483021/1743093794635_kbzk5v.jpg'),
      ),
    );
  }
}