import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:jp_app_challenge/screens/start_screen.dart';
import 'package:jp_app_challenge/widgets/fancy_button.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Opacity(
          opacity: 0.7,
          child: Image.asset(scale: 0.9, "assets/images/top_card.png"),
        )), // <== noch zum Container machen für Glaseffekt
        Positioned(
            top: 60,
            right: 8,
            child: Image.asset(scale: 2, "assets/images/Burger_3D.png")),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: Theme.of(context).textTheme.titleMedium,
                      "Angi's Yummy Burger"),
                  Row(
                    children: [
                      Icon(color: Colors.pink.shade300, Icons.star),
                      Text(
                          style: Theme.of(context).textTheme.titleSmall, "4.8"),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                    style: Theme.of(context).textTheme.titleSmall,
                    "Delish vegan Burger that taste like Heaven"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.euro),
                    Text(
                        style: Theme.of(context).textTheme.titleMedium,
                        "13,99"),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 48.0),
                  child: FancyButton(width: 120, text: "Add to Order"))
            ],
          ),
        ),
      ],
    );
  }
}
