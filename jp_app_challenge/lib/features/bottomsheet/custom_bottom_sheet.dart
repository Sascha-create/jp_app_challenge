import 'package:flutter/material.dart';
import 'package:jp_app_challenge/features/widgets/bottom_sheet_button.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';
import 'package:jp_app_challenge/features/widgets/bottom_sheet_description.dart';
import 'package:jp_app_challenge/features/widgets/number_button.dart';
import 'package:jp_app_challenge/features/widgets/size_button.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.dishItem,
  });
  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    DishItem currentItem = dishItem;
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [SizeButton(), NumberButton()],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: BottomSheetButton(
                        width: 390,
                        height: 48,
                        text: "Add to order for ${currentItem.price}"),
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
                BottomSheetDescription(
                  dishItem: currentItem,
                ),
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
