import 'package:flutter/material.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';
import 'package:jp_app_challenge/widgets/dish_card.dart';

class DishCardListView extends StatelessWidget {
  const DishCardListView({
    super.key,
    required this.widget,
  });

  final HomeScreen widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.dishItems.length,
          itemBuilder: (BuildContext context, int index) => DishCard(
                dishItem: widget.dishItems[index],
              )),
    );
  }
}
