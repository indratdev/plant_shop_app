import 'package:flutter/material.dart';

import 'package:plant_shop_app/view/home/home_screen.dart';
import 'package:plant_shop_app/view/onboarding/widgets/export.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.headlineMedium?.fontSize,
                    ),
                  ),
                ),
              ),
              const PlantIndicatorWidget(),
              const TitleOnboardingWidget(),
              const NextButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
