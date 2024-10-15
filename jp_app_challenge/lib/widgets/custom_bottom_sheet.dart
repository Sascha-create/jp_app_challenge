import 'package:flutter/material.dart';
import 'package:jp_app_challenge/widgets/fancy_button.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.brown.shade900, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Column(
        children: [
          Container(
              transform: Matrix4.translationValues(0, -140, 0),
              child: Image.asset("assets/images/cat cupcakes_3D.png")),
          FancyButton(width: 360, text: "Add to order for 8.99")
        ],
      )),
    );
  }
}
