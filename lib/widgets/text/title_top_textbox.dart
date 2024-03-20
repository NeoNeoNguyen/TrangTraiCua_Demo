// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class TitleWithAsterisk extends StatelessWidget {
  final String title;

  const TitleWithAsterisk({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '$title ',
        style: TextStyle(
              color: AppColors.grayColor,
            ),       
      ),
    );
  }
}
