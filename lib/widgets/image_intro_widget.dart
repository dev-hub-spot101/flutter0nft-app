import 'package:flutter/material.dart';
class ImageIntroWidget extends StatefulWidget {
  final String image;
  const ImageIntroWidget({super.key, required this.image});

  @override
  State<ImageIntroWidget> createState() => _ImageIntroWidgetState();
}

class _ImageIntroWidgetState extends State<ImageIntroWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover)
        ),
      ),
    );
  }
}