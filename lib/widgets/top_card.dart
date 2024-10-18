import 'package:flutter/material.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';
import 'package:jp_app_challenge/widgets/top_card_button.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key, required this.dishItem});
  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
            child: Opacity(
          opacity: 0.7,
          child: Image.asset(scale: 0.9, "assets/images/top_card.png"),
        )),
        Positioned(
            top: 70,
            right: 8,
            child: Image.asset(scale: 2.2, dishItem.imagePath)),
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
                      dishItem.title),
                  Row(
                    children: [
                      Icon(color: Colors.pink.shade300, Icons.star),
                      Text(
                          style: Theme.of(context).textTheme.titleSmall,
                          dishItem.rating.toString()),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                    style: Theme.of(context).textTheme.titleSmall,
                    dishItem.description),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.euro),
                    Text(
                        style: Theme.of(context).textTheme.titleMedium,
                        "${dishItem.price}"),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 48.0),
                  child: TopCardButton(
                      width: 120, height: 40, text: "Add to Order"))
            ],
          ),
        ),
      ],
    );
  }
}
