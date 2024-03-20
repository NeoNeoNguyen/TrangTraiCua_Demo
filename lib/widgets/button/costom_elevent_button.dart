// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final IconData leadingIcon;
  final IconData trailingIcon;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.leadingIcon,
    required this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Row(
          children: <Widget>[
            Icon(
              leadingIcon,
              color: Colors.black,
            ),
            SizedBox(width: 8),
            Text(
              buttonText,
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Icon(
              trailingIcon,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
