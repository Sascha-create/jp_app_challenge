import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 0.7, color: Colors.white)),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          )).asGlass(clipBorderRadius: BorderRadius.circular(24)),
    );
  }
}
