// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  final String text;
  final Function(bool) onChanged;

  const CustomCheckBox({
    Key? key,
    required this.isChecked,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
              widget.onChanged(_isChecked);
            });
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(3),
              color: _isChecked ? AppColors.primaryColor : Colors.transparent,
            ),
            child: _isChecked
                ? Icon(Icons.check, color: Colors.white, size: 18)
                : null,
          ),
        ),
        SizedBox(width: 5),
        Text(
          widget.text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
