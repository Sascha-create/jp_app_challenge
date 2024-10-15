import 'package:flutter/material.dart';
import 'package:jp_app_challenge/widgets/custom_bottom_sheet.dart';

class NumberButton extends StatefulWidget {
  const NumberButton({super.key});

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.outlined(
            onPressed: () {
              setState(() {
                number > 1 ? number-- : number;
              });
            },
            icon: const Icon(Icons.remove)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(style: Theme.of(context).textTheme.titleLarge, "$number"),
        ),
        IconButton.outlined(
            onPressed: () {
              setState(() {
                number = number + 1;
              });
            },
            icon: const Icon(Icons.add)),
      ],
    );
  }
}