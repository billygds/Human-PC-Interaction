import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:human_interaction_proj/components/traveler_button.dart';
import 'package:human_interaction_proj/components/local_button.dart';
import 'package:human_interaction_proj/pages/local_page.dart';

class Homepage extends  StatelessWidget {
   Homepage ({super.key});
  
  final User = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (actions: [
        IconButton(
          onPressed: signUserOut, 
          icon: Icon(Icons.logout)
          )
          ],
          ),
      body:Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 50),
         LocalButton(
          onTap: () {
            // Navigate to the Local main page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalPage()),
            );
          },    
          ),
          
          const SizedBox(height: 50),

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
    );
  }
}
