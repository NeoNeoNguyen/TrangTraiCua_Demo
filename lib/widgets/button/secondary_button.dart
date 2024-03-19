// ignore_for_file: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const SecondaryButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(color: AppColors.primaryColor),
      ),
      child: SizedBox(
          height: 40,
          child: Center(
              child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
