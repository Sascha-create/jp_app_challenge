import 'package:flutter/material.dart';
import 'package:jp_app_challenge/dish_item.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';
import 'package:jp_app_challenge/widgets/custom_bottom_sheet.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key, required this.dishItem});

  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          context: context,
         
          builder: (BuildContext context) {
            return const CustomBottomSheet();
          }),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Container(
          width: 220,
          height: 280,
          decoration: BoxDecoration(
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
                  child: Image.asset(scale: 3.5, dishItem.imagePath),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                          style: Theme.of(context).textTheme.titleMedium,
                          dishItem.title),
                      Text(
                          style: Theme.of(context).textTheme.titleSmall,
                          dishItem.description),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Row(
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
