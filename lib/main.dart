import 'package:flutter/material.dart';
import 'package:jp_app_challenge/screens/start_screen.dart';
import 'config/styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
