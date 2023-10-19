import 'package:flutter/material.dart';

class TitleOnboardingWidget extends StatelessWidget {
  const TitleOnboardingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height / 20,
        bottom: MediaQuery.sizeOf(context).height / 20,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Enjoy Your \n",
              style: TextStyle(
                color: Colors.black,
                fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
              ),
            ),
            TextSpan(
              text: "Life With ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
            TextSpan(
              text: "Plants",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
