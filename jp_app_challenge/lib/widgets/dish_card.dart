import 'package:flutter/material.dart';
import 'package:jp_app_challenge/dish_item.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key, required this.dishItem});

  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Container(
        width: 220,
        height: 280,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.grey,
          ], transform: GradientRotation(80)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(scale: 3.5, dishItem.imagePath),
              ),
              Text(
                  style: Theme.of(context).textTheme.titleMedium,
                  dishItem.title),
              Text(
                  style: Theme.of(context).textTheme.titleSmall,
                  dishItem.description),
              Row(
                children: [
                  const Icon(Icons.euro),
                  Text(
                      style: Theme.of(context).textTheme.titleSmall,
                      "${dishItem.price}"),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.favorite_outline),
                  Text(
                      style: Theme.of(context).textTheme.titleSmall,
                      "${dishItem.points}"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
