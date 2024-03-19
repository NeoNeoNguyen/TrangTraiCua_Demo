// ignore_for_file: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final bool enable;

  const PrimaryButton({super.key, required this.onTap, required this.text, this.enable = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enable ?  onTap : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: SizedBox(
          height: 40,
          child: Center(
              child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.primaryColor,
                fontWeight: FontWeight.bold
            ),
          ))),
    );
  }
}
