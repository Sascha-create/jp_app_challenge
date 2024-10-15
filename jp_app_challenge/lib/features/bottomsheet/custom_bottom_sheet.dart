import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:jp_app_challenge/dish_item.dart';
import 'package:jp_app_challenge/features/widgets/bottom_sheet_description.dart';
import 'package:jp_app_challenge/widgets/fancy_button.dart';
import 'package:jp_app_challenge/features/widgets/number_button.dart';
import 'package:jp_app_challenge/features/widgets/size_button.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key, required this.dishItem,
  });
  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.89,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.brown.shade900, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [SizeButton(), NumberButton()],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 32.0),
                    child:
                        FancyButton(width: 390, text: "Add to order for 8.99"),
                  ),
                ],
              ),
            ],
          ),
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                    transform: Matrix4.translationValues(0, -140, 0),
                    child: Image.asset(dishItem.imagePath)),
                const BottomSheetDescription(),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton.outlined(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close)),
                    ],
                  ),
                ),
              ]),
        ]),
      )),
    );
  }
}
