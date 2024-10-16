import 'package:flutter/material.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';
import 'package:jp_app_challenge/widgets/category_button.dart';
import 'package:jp_app_challenge/widgets/dish_card.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.dishItems});

  final List<DishItem> dishItems;

  @override
  Widget build(BuildContext context) {
    final List buttons = [
      const CategoryButton(text: "All Categories"),
      const CategoryButton(text: "Salty"),
      const CategoryButton(text: "Sweet"),
      const CategoryButton(text: "Delicious"),
    ];
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
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SizedBox(
                      height: 48,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: buttons.length,
                        itemBuilder: (BuildContext context, int index) =>
                            buttons[index],
                      )),
                ),
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
                          DishCard(
                            dishItem: dishItems[index],
                            currentIndex: index,
                          )),
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
