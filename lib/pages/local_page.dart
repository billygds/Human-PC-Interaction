import 'package:flutter/material.dart';

class LocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Page'),
      ),
      body: Center(
        child: Text('This is the local page!'),
      ),
    );
  }
}