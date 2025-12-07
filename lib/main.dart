import 'package:flutter/material.dart';

void main() {
  runApp(WRLDPlayerApp());
}

class WRLDPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WRLD Player',
      theme: ThemeData.dark(), // Dark theme similar to XPlayer
      home: Scaffold(
        appBar: AppBar(
          title: Text('WRLD Player'),
        ),
        body: Center(
          child: Text(
            'Welcome to WRLD Player!\nVideos and music will appear here.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
