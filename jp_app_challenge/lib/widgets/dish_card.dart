import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key});

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:
                  Image.asset(scale: 3.5, "assets/images/cat cupcakes_3D.png"),
            ),
            Text(style: Theme.of(context).textTheme.titleMedium, "Title"),
            Text(style: Theme.of(context).textTheme.titleSmall, "description"),
            Row(
              children: [
                const Icon(Icons.euro),
                Text(style: Theme.of(context).textTheme.titleSmall, "price"),
                const Expanded(child: SizedBox()),
                const Icon(Icons.favorite_outline),
                Text(style: Theme.of(context).textTheme.titleSmall, "200"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
