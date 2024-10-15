import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:jp_app_challenge/widgets/fancy_button.dart';
import 'package:jp_app_challenge/widgets/number_button.dart';
import 'package:jp_app_challenge/widgets/size_button.dart';
import 'package:jp_app_challenge/widgets/top_card.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

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
                    child: Image.asset("assets/images/cat cupcakes_3D.png")),
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

class BottomSheetDescription extends StatelessWidget {
  const BottomSheetDescription({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text(style: Theme.of(context).textTheme.labelLarge, "200")
                ],
              ),
            ),
            Text(
                style: Theme.of(context).textTheme.headlineMedium,
                "Mogli's Cup"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
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
                  Text(style: Theme.of(context).textTheme.titleMedium, "8.99")
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
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
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