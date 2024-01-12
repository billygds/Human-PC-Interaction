import 'package:flutter/material.dart';

class TravelerButton extends StatelessWidget {
  final Function()? onTap;

  const TravelerButton({Key? key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(vertical: 250), // Adjust this value
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 183, 201, 226),
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(
          child: Text(
            "Traveler",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
