// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ImportImageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ImportImageButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(5),
      strokeWidth: 1,
      color: Colors.grey,
      dashPattern: const [6, 3], // Pattern của đường nét, có thể tùy chỉnh
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Icon(
            Icons.add_photo_alternate_outlined,
            color: Colors.grey,
            ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.resolveWith<Size>(
              (states) => Size(double.infinity, double.infinity),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
