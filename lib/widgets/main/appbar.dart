// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onPressedBack;

  const MyAppBar({
    Key? key,
    required this.title,
    this.showBackButton = false,
    this.onPressedBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackButton,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: showBackButton
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios, 
                color: AppColors.primaryColor),
              onPressed: onPressedBack,
              color: AppColors.primaryColor,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

