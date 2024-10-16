import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:jp_app_challenge/repositories/dish_item.dart';

class BottomSheetDescription extends StatelessWidget {
  const BottomSheetDescription({
    super.key,
    required this.dishItem,
  });
  final DishItem dishItem;

  @override
  Widget build(BuildContext context) {
    DishItem currentItem = dishItem;
    return Positioned(
      bottom: -170,
      child: Container(
        width: 380,
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, strokeAlign: 0.5),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  Text(
                      style: Theme.of(context).textTheme.labelLarge,
                      "${currentItem.points}")
                ],
              ),
            ),
            Text(
                style: Theme.of(context).textTheme.headlineMedium,
                currentItem.title),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: Text(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge,
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,"
                  " sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,"
                  " sed diam voluptua. At vero eos et accusam et"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.euro),
                  Text(
                      style: Theme.of(context).textTheme.titleLarge,
                      "${currentItem.price}")
                ],
              ),
            ),
            const Divider(
              thickness: 0.4,
              indent: 32,
              endIndent: 32,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                            style: Theme.of(context).textTheme.labelLarge,
                            "Ingredients"),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.medication_liquid_sharp,
                            color: Colors.grey,
                            size: 28,
                          ),
                          Icon(
                            Icons.medication_liquid_sharp,
                            color: Colors.grey,
                            size: 28,
                          ),
                          Icon(
                            Icons.medication_liquid_sharp,
                            color: Colors.grey,
                            size: 28,
                          ),
                          Icon(
                            Icons.medication_liquid_sharp,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: Text(
                            style: Theme.of(context).textTheme.labelLarge,
                            "Reviews"),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ).asGlass(
          clipBorderRadius: BorderRadius.circular(32),
          tintColor: Colors.transparent,
          frosted: false,
          blurX: 15,
          blurY: 15),
    );
  }
}
