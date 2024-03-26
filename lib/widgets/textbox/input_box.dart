// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final TextEditingController controller;
  final bool autofocus;

  const InputBox({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.onChanged,
    required this.controller, 
    required this.autofocus,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: controller, 
        autofocus: autofocus,   
      ),
    );
  }
}
