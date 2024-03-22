import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class ThirdButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final bool enable;

  const ThirdButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth / 3;

    return ElevatedButton(
      onPressed: enable ? onTap : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(buttonWidth, 40),
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textcolorwhite,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
