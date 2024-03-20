// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';

class DropdownText extends StatefulWidget {
  final String value;
  final List<String> items;
  final Function(String) onChanged;

  const DropdownText({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropdownTextState createState() => _DropdownTextState();
}

class _DropdownTextState extends State<DropdownText> {
  late String _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _value,
          isExpanded: true,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          onChanged: (String? newValue) {
            setState(() {
              _value = newValue!;
              widget.onChanged(_value);
            });
          },
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
