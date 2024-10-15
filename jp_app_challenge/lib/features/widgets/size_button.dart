import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  const SizeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
              style: Theme.of(context).textTheme.labelLarge,
              "Small  |  Medium  |  Large")),
    );
  }
}
