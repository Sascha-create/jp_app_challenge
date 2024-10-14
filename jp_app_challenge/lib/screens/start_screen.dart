import 'package:flutter/material.dart';
import 'package:jp_app_challenge/screens/home_screen.dart';
import 'package:jp_app_challenge/widgets/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_startscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Stack(
          children: [
            Positioned(
                top: 108,
                child: Image.asset("assets/images/chick cupcakes_3D.png")),
            // CK SNAC position anpassen !!
            Positioned(
                left: 0,
                right: 0,
                bottom: 160,
                child:
                    Image.asset(fit: BoxFit.fitWidth, "assets/images/t_2.png")),
            Positioned(
              bottom: 140,
              left: 25,
              child: Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                          style: Theme.of(context).textTheme.titleLarge,
                          "Feeling Snackish Today?"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            style: Theme.of(context).textTheme.titleSmall,
                            "Explore Angi's most popular snak selection\n and get instantly happy"),
                      ),
                      const StartButton(),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
