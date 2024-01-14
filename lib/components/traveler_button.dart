import 'package:flutter/material.dart';

class TravelerButton extends StatelessWidget {
  final Function()? onTap;

  const TravelerButton({Key? key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(70),
        margin: const EdgeInsets.symmetric(vertical:20), // Adjust this value
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 183, 201, 226),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Adjust the opacity as needed
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 6), // changes the direction of shadow
            ),
          ],
        ),
        child: const Center(
          child: Text(
            "TRAVELER",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
