// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ImportVideoButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ImportVideoButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(5),
        strokeWidth: 1,
        color: Colors.grey,
        dashPattern: const [6, 3],
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: onPressed,
              child: Icon(
                Icons.play_circle,
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
        ),
      ),
    );
  }
}
