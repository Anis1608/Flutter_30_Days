import 'package:flutter/material.dart';

class Day05Footer extends StatelessWidget {
  final String displayText;
  const Day05Footer({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(displayText), centerTitle: true),
      body: Center(
        child: Text(
          "$displayText Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}