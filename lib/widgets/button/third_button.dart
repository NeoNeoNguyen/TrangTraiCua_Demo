import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class ThirdButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final double width;
  final bool enable;

  const ThirdButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.width = 150,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enable ? onTap : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(width, 40), 
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
