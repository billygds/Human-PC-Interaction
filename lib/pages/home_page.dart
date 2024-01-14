import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:human_interaction_proj/components/traveler_button.dart';
import 'package:human_interaction_proj/components/local_button.dart';
import 'package:human_interaction_proj/pages/local_page.dart';
import 'package:human_interaction_proj/pages/settings_page.dart';
import 'package:human_interaction_proj/pages/techSupport_page.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key});

  final User = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     backgroundColor: Colors.blue,
      actions: [
        // Logout Button
        IconButton(
          onPressed: signUserOut,
          icon: Icon(Icons.logout),
        ),
        // Tech Support Icon
        IconButton(
          onPressed: () {
            // Navigate to Tech Support page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TechSupportPage()),
            );
          },
          icon: Image.asset('lib/assets/tech_support.png'),
        ),
        // Settings Icon
        IconButton(
          onPressed: () {
            // Navigate to Settings page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
          icon: Image.asset('lib/assets/settings.png'),
        ),
      ],
    ),
    body: Center(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40.0), // Adjust the value as needed
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LocalButton(
          onTap: () {
            // Navigate to the Local main page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalPage()),
            );
          },
        ),
        const SizedBox(height: 10),
        TravelerButton(
          onTap: () {
            // Navigate to the Local main page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalPage()),
            );
          },
        ),
      ],
    ),
  ),
),
  );
}
}