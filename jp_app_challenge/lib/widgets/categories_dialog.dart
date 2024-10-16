import 'package:flutter/material.dart';

class CategoriesDialog extends StatelessWidget {
  const CategoriesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black54,
      title: const Center(child: Text("Choose your Favorite")),
      titleTextStyle:
          const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(style: Theme.of(context).textTheme.titleLarge, "Salty"),
          const SizedBox(height: 8),
          Text(style: Theme.of(context).textTheme.titleLarge, "Sweet"),
          const SizedBox(height: 8),
          Text(style: Theme.of(context).textTheme.titleLarge, "Delicious"),
          const SizedBox(height: 8),
          Text(style: Theme.of(context).textTheme.titleLarge, "Sticky"),
          const SizedBox(height: 8),
          Text(style: Theme.of(context).textTheme.titleLarge, "Waffle"),
        ],
      ),
    );
  }
}
