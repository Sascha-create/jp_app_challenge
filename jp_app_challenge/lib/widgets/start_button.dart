import 'package:flutter/material.dart';
import 'package:jp_app_challenge/dish_data.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

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
        margin: EdgeInsets.all(16),
        width: 180,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(begin: Alignment(0, 0.5), colors: [
              Colors.pink.shade300,
              Colors.pink.shade200,
              Colors.orangeAccent.shade100
            ])),
        child: Center(
            child: Text(
                style: Theme.of(context).textTheme.titleMedium, "Order Now")),
      ),
    );
  }
}
