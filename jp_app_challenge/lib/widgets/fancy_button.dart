import 'package:flutter/material.dart';
import 'package:jp_app_challenge/dish_data.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';

class FancyButton extends StatelessWidget {
  const FancyButton({
    super.key,
    required this.width,
    required this.text,
  });
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(dishItems: dishItems)),
        );
      },
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(begin: Alignment(0, 0.5), colors: [
              Colors.pink.shade300,
              Colors.pink.shade200,
              Colors.orangeAccent.shade100
            ])),
        child: Center(
            child: Text(style: Theme.of(context).textTheme.titleMedium, text)),
      ),
    );
  }
}
