import 'package:flutter/material.dart';
import 'package:jp_app_challenge/repositories/dish_data.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.width,
    required this.text,
    required this.height,
  });
  final double width;
  final double height;
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(begin: const Alignment(0, 0.5), colors: [
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
