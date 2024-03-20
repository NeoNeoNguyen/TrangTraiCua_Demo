import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;

  const AssetImageWidget({
    Key? key,
    required this.imagePath,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    );
  }
}
