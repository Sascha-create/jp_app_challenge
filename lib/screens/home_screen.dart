import 'package:flutter/material.dart';
import 'package:jp_app_challenge/repositories/dish_data.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';
import 'package:jp_app_challenge/widgets/button_list_view.dart';
import 'package:jp_app_challenge/widgets/categories_dialog.dart';
import 'package:jp_app_challenge/widgets/category_button.dart';
import 'package:jp_app_challenge/widgets/dish_card_list_view.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.dishItems});

  final List<DishItem> dishItems;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DishItem currentItem = dishItems[5];
  @override
  Widget build(BuildContext context) {
    final List buttons = [
      CategoryButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const CategoriesDialog());
          },
          text: "All Categories"),
      CategoryButton(
          onPressed: () {
            setState(() {
              currentItem = dishItems[5];
            });
          },
          text: "Salty"),
      CategoryButton(
          onPressed: () {
            setState(() {
              currentItem = dishItems[2];
            });
          },
          text: "Sweet"),
      CategoryButton(
          onPressed: () {
            setState(() {
              currentItem = dishItems[1];
            });
          },
          text: "Delicious"),
      CategoryButton(
          onPressed: () {
            setState(() {
              currentItem = dishItems[3];
            });
          },
          text: "Sticky"),
      CategoryButton(
          onPressed: () {
            setState(() {
              currentItem = dishItems[4];
            });
          },
          text: "Waffle"),
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
                ButtonListView(buttons: buttons),
                Center(
                    child: TopCard(
                  dishItem: currentItem,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 16),
                  child: Text(
                      style: Theme.of(context).textTheme.titleLarge,
                      "We Recommend"),
                ),
                DishCardListView(widget: widget),
                const SizedBox(
                  height: 16,
                )
              ],
            ))
      ]),
    );
  }
}
