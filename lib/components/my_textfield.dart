import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText, required errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: TextField(
        textAlign: TextAlign.left,
        controller: controller,
        obscureText: obscureText,       
        decoration: InputDecoration(
            fillColor: const Color.fromARGB(255, 183, 201, 226),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontStyle: FontStyle.italic,
                                 )
            
         ),
         
            
      
      ),
    );
  }
}