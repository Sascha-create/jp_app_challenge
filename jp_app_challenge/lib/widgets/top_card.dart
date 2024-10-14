import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: Image.asset("assets/images/top_card.png")),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: Theme.of(context).textTheme.titleMedium,
                      "Angi's Yummy Burger"),
                  Row(
                    children: [
                      Icon(color: Colors.pink.shade300, Icons.star),
                      Text(
                          style: Theme.of(context).textTheme.titleSmall, "4.8"),
                    ],
                  )
                ],
              ),
              Text(
                  style: Theme.of(context).textTheme.titleSmall,
                  "Delish vegan Burger that taste like Heaven"),
              Row(
                children: [
                  Icon(Icons.euro),
                  Text(style: Theme.of(context).textTheme.titleMedium, "13,99"),
                ],
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Add to order"))
            ],
          ),
        ),
      ],
    );
  }
}
