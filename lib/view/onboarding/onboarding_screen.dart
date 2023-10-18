import 'package:flutter/material.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';
import 'package:plant_shop_app/view/onboarding/widgets/plant_indicator_widget.dart';
import 'package:plant_shop_app/view/home/home_screen.dart';

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
                    onPressed: () {},
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.fontSize,
                        ),
                      ),
                    )),
              ),
              const PlantIndicatorWidget(),
              SizedBox(height: MediaQuery.sizeOf(context).height / 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enjoy Your \n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            Theme.of(context).textTheme.headlineLarge?.fontSize,
                      ),
                    ),
                    TextSpan(
                      text: "Life With ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.fontSize,
                          decorationStyle: TextDecorationStyle.wavy),
                    ),
                    TextSpan(
                      text: "Plants",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize:
                            Theme.of(context).textTheme.headlineLarge?.fontSize,
                      ),
                    ),
                  ],
                  // style: TextStyle(color: Colors.yellow),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 20),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 9,
                width: MediaQuery.sizeOf(context).height / 9,
                // width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(
                        CustomColor.greenColor), // <-- Button color
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: CustomColor.whiteV1Color,
                    size: MediaQuery.sizeOf(context).height / 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
