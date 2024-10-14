import 'package:flutter/material.dart';
import 'package:jp_app_challenge/widgets/dish_card.dart';
import 'package:jp_app_challenge/main.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_mainscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: Theme.of(context).textTheme.headlineMedium,
                "Choose Your Favorite\nSnack"),
            OutlinedButton(
                onPressed: () {},
                child: const Text(
                    "All Categories")), // Carousel mit Buttons einfügen

            const Center(child: TopCard()),
            Text(style: Theme.of(context).textTheme.titleLarge, "We Recommend"),
            const DishCard(),
          ],
        )
      ],
    );
  }
}
