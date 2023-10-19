import 'package:flutter/material.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';
import 'package:plant_shop_app/view/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: MediaQuery.sizeOf(context).width / 30),
          headlineMedium:
              TextStyle(fontSize: MediaQuery.sizeOf(context).width / 20),
          headlineLarge:
              TextStyle(fontSize: MediaQuery.sizeOf(context).width / 12),
        ).apply(
          bodyColor: CustomColor.blackColor,
        ),
        scaffoldBackgroundColor: CustomColor.whiteV1Color,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
