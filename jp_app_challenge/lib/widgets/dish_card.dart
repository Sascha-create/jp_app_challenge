import 'package:flutter/material.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';
import 'package:jp_app_challenge/features/bottomsheet/custom_bottom_sheet.dart';

class DishCard extends StatelessWidget {
  const DishCard(
      {super.key, required this.dishItem, required this.currentIndex});

  final DishItem dishItem;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    DishItem currentItem = dishItem;
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return CustomBottomSheet(
              dishItem: currentItem,
            );
          }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Container(
            width: 220,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white,
                strokeAlign: 0.4,
              ),
              gradient: LinearGradient(colors: [
                Colors.grey.shade700,
                Colors.deepPurple,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                        height: 160,
                        child: Image.asset(scale: 3.5, dishItem.imagePath)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            style: Theme.of(context).textTheme.titleMedium,
                            dishItem.title),
                        Text(
                            style: Theme.of(context).textTheme.labelLarge,
                            dishItem.description),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(Icons.euro),
                        ),
                        Text(
                            style: Theme.of(context).textTheme.titleSmall,
                            "${dishItem.price}"),
                        const Expanded(child: SizedBox()),
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                            style: Theme.of(context).textTheme.labelLarge,
                            "${dishItem.points}"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
