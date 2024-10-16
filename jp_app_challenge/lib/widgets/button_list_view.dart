import 'package:flutter/material.dart';

class ButtonListView extends StatelessWidget {
  const ButtonListView({
    super.key,
    required this.buttons,
  });

  final List buttons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
          height: 48,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: buttons.length,
            itemBuilder: (BuildContext context, int index) => buttons[index],
          )),
    );
  }
}
