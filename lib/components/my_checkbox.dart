import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override

  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool!;
            });
          },
        ),
        const SizedBox(width: 8),
        Text(
          'Remember me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
