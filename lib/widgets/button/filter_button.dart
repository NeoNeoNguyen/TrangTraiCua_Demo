import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FilterButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Lọc'),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.keyboard_arrow_down_sharp)
        ],
      ),
    );
  }
}
