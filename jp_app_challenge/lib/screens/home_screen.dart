import 'package:flutter/material.dart';
import 'package:jp_app_challenge/dish_item.dart';
import 'package:jp_app_challenge/widgets/dish_card.dart';
import 'package:jp_app_challenge/main.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';
import 'package:jp_app_challenge/dish_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.dishItems});

  final List<DishItem> dishItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_mainscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                      style: Theme.of(context).textTheme.headlineMedium,
                      "Choose Your Favorite\nSnack"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text("All Categories")),
                ), // Carousel mit Buttons einfügen

                const Center(child: TopCard()),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 16),
                  child: Text(
                      style: Theme.of(context).textTheme.titleLarge,
                      "We Recommend"),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: dishItems.length,
                      itemBuilder: (BuildContext context, int index) =>
                          DishCard(dishItem: dishItems[index])),
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ))
      ]),
    );
  }
}
