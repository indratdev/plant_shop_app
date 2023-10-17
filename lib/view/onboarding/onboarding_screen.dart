import 'package:flutter/material.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                  child: Text("Skip"),
                ),
              ),
              PlantIndicatorWidget(),
              // RichText(
              //   textAlign: TextAlign.center,
              //   text: TextSpan(
              //     text: 'Enjoy Your ',
              //     style: DefaultTextStyle.of(context).style,
              //     children: const <TextSpan>[
              //       TextSpan(
              //         text: 'Life With',
              //       ),
              //       TextSpan(
              //           text: ' Plants',
              //           style: TextStyle(fontWeight: FontWeight.bold)),
              //     ],
              //   ),
              // ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Enjoy Your ", style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "Life With",
                    style: TextStyle(
                        // fontSize: Theme.of(context).textTheme.headlineLarge.copyWith(fontSize: Theme.of(context).textTheme.),
                        color: Colors.black,

                        // decoration: TextDecoration.underline,
                        // decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.wavy))
              ], style: TextStyle(color: Colors.yellow))),

              SizedBox(
                height: MediaQuery.sizeOf(context).height / 9,
                width: MediaQuery.sizeOf(context).height / 9,
                // width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(
                        CustomColor.greenColor), // <-- Button color
                  ),
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    color: CustomColor.whiteV1Color,
                    size: MediaQuery.sizeOf(context).height / 16,
                  ),
                ),
              )
              // MaterialButton(
              //   onPressed: () {},
              //   color: Colors.blue,
              //   textColor: Colors.white,
              //   child: Icon(
              //     Icons.camera_alt,
              //     size: 24,
              //   ),
              //   padding: EdgeInsets.all(16),
              //   shape: CircleBorder(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class PlantIndicatorWidget extends StatefulWidget {
  const PlantIndicatorWidget({
    super.key,
  });

  @override
  State<PlantIndicatorWidget> createState() => _PlantIndicatorWidgetState();
}

class _PlantIndicatorWidgetState extends State<PlantIndicatorWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final pages = List.generate(
    4,
    (index) => Container(
      width: 1200,
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
        // color: Colors.grey.shade300,
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(
            "assets/images/plant_0${index + 1}.png",
          ),
          fit: BoxFit.scaleDown,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      // child: Container(
      //   color: Colors.blue,
      //   // height: 500,
      //   child: Center(
      //       child: Text(
      //     "Page $index",
      //     style: TextStyle(color: Colors.indigo),
      //   )),
      // ),
    ),
    // Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(16),
    //     color: Colors.grey.shade300,
    //   ),
    //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    //   child: Container(
    //     height: 280,
    //     child: Center(
    //         child: Text(
    //       "Page $index",
    //       style: TextStyle(color: Colors.indigo),
    //     )),
    //   ),
    // ),
  );
  @override
  Widget build(BuildContext context) {
    print(">>> : ${MediaQuery.sizeOf(context).width / 0.5}");
    return Column(
      children: [
        Container(
          // color: Colors.red,
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ExpandingDotsEffect(
              dotColor: CustomColor.greyColor,
              activeDotColor: CustomColor.greenColor,
              dotHeight: 12,
              dotWidth: 12,
            )
            // const WormEffect(
            //   dotHeight: 16,
            //   dotWidth: 16,
            //   type: WormType.thinUnderground,
            // ),
            ),
      ],
    );
  }
}
